part of 'ticket_detail_bloc.dart';

sealed class TicketDetailEvent extends Equatable {
  const TicketDetailEvent();

  @override
  List<Object?> get props => [];
}

final class TicketDetailFetched extends TicketDetailEvent {
  final int ticketId;
  final int? phaseId;

  const TicketDetailFetched({required this.ticketId, this.phaseId});

  @override
  List<int?> get props => [ticketId, phaseId];
}
