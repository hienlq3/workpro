// Dart & third-party packages
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

// Project core/shared
import 'package:wp_core/wp_core.dart';

// Feature-specific
import 'package:wp_ticket/src/enums/base_form_type.dart';
import 'package:wp_ticket/src/models/base_form_model.dart';
import 'package:wp_ticket/src/models/template_model.dart';
import 'package:wp_ticket/src/models/ticket_detail_model.dart';
import 'package:wp_ticket/src/models/ticket_info_model.dart';
import 'package:wp_ticket/src/repositories/ticket_repository.dart';

// Part files
part 'ticket_detail_event.dart';
part 'ticket_detail_state.dart';

const throttleDuration = Duration(milliseconds: 100);

/// Custom Event Transformer để throttle & droppable event stream
EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) =>
      droppable<E>().call(events.throttle(duration), mapper);
}

@injectable
class TicketDetailBloc
    extends MeasuredBloc<TicketDetailEvent, TicketDetailState> {
  TicketDetailBloc({required TicketRepository ticketRepository})
    : _ticketRepository = ticketRepository,
      super(TicketDetailInitial()) {
    onMeasured<TicketDetailFetched>(
      _onFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final TicketRepository _ticketRepository;
  final cancelToken = CancelToken();

  Future<void> _onFetched(
    TicketDetailFetched event,
    Emitter<TicketDetailState> emit,
  ) async {
    try {
      final listFuture = <Future<dynamic>>[];
      final ticketDetailFuture = _ticketRepository.ticketDetailFetch(
        ticketId: event.ticketId,
        cancelToken: cancelToken,
      );
      listFuture.add(ticketDetailFuture);

      final ticketTemplateFuture = _ticketRepository.ticketTemplateFetch(
        ticketId: event.ticketId,
        cancelToken: cancelToken,
      );
      listFuture.add(ticketTemplateFuture);

      if (event.phaseId != null) {}

      // Gọi song song API
      final results = await Future.wait(listFuture);

      final ticketDetail = results[0] as TicketDetailModel?;
      final ticketTemplate = results[1] as TemplateModel?;

      // Xử lý danh sách baseForms
      final baseForms = _buildBaseForms(ticketTemplate);

      emit(
        TicketDetailSuccess(
          ticketInfo: ticketDetail?.ticketInfo,
          baseForms: baseForms,
        ),
      );
    } catch (error, stackTrace) {
      AppErrorHandler.handle(error, stackTrace);
      onError(error, stackTrace);
      emit(TicketDetailError());
    }
  }

  /// Xử lý build danh sách baseForms từ TemplateModel
  List<BaseFormModel> _buildBaseForms(TemplateModel? template) {
    if (template == null) return [];

    final List<BaseFormModel> baseForms = [];

    // Add individual form
    baseForms.addAll(template.individuals);

    // Add table (nếu có)
    if (template.table != null) {
      baseForms.add(_convertTable(template.table!));
    }

    // Add multi-table (nếu có)
    if (template.multitable?.isNotEmpty == true) {
      baseForms.addAll(template.multitable!.map(_convertTable));
    }

    // Sắp xếp theo position
    baseForms.sort((a, b) => (a.position ?? 0).compareTo(b.position ?? 0));

    return baseForms;
  }

  /// Hàm convert table hoặc multitable về dạng table với unique values
  BaseFormModel _convertTable(BaseFormModel table) {
    final uniqueValues = _getUniqueValuesInTable(table.values ?? []);
    return table.copyWith(type: BaseFormType.table, values: uniqueValues);
  }

  /// Lấy danh sách values trong table mà columnId + position không bị trùng
  List<BaseFormModel> _getUniqueValuesInTable(List<BaseFormModel> values) {
    final Map<int, int> uniqueMap = {};

    final uniqueValues =
        values.where((item) {
          if (!uniqueMap.containsKey(item.columnId) ||
              uniqueMap[item.columnId] != item.position) {
            uniqueMap[item.columnId!] = item.position!;
            return true;
          }
          return false;
        }).toList();

    // Sort theo position
    uniqueValues.sort((a, b) => (a.position ?? 0).compareTo(b.position ?? 0));

    return uniqueValues;
  }

  @override
  Future<void> close() {
    cancelToken.cancel();
    return super.close();
  }
}
