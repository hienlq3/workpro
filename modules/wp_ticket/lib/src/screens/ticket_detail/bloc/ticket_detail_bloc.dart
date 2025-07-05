import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_ticket/src/models/template_model.dart';
import 'package:wp_ticket/src/models/ticket_detail_model.dart';
import 'package:wp_ticket/src/models/ticket_info_model.dart';
import 'package:wp_ticket/src/repositories/ticket_repository.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:stream_transform/stream_transform.dart';

part 'ticket_detail_event.dart';
part 'ticket_detail_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
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

      final results = await Future.wait(listFuture);

      final ticketDetail = results[0] as TicketDetailModel?;
      final ticketTemplate = results[1] as TemplateModel?;

      emit(
        TicketDetailSuccess(
          ticketInfo: ticketDetail?.ticketInfo,
          ticketTemplate: ticketTemplate,
        ),
      );
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      emit(TicketDetailError());
    }
  }

  @override
  Future<void> close() {
    cancelToken.cancel();
    return super.close();
  }
}
