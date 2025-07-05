import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
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
class TicketDetailBloc extends Bloc<TicketDetailEvent, TicketDetailState> {
  TicketDetailBloc({required TicketRepository ticketRepository})
    : _ticketRepository = ticketRepository,
      super(TicketDetailInitial()) {
    on<TicketDetailFetched>(
      _onFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }
  final TicketRepository _ticketRepository;

  Future<void> _onFetched(
    TicketDetailFetched event,
    Emitter<TicketDetailState> emit,
  ) async {
    try {
      final ticketDetail = await _ticketRepository.ticketDetailFetch(
        ticketId: event.ticketId,
      );
      if (ticketDetail != null) {
        emit(TicketDetailSuccess(ticketInfo: ticketDetail.ticketInfo));
      }
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      emit(TicketDetailError());
    }
  }
}
