part of 'ticket_detail_bloc.dart';

sealed class TicketDetailState extends Equatable {
  const TicketDetailState();

  @override
  List<Object> get props => [];
}

final class TicketDetailInitial extends TicketDetailState {}

final class TicketDetailSuccess extends TicketDetailState {
  final TicketInfoModel? ticketInfo;

  const TicketDetailSuccess({required this.ticketInfo});
}

final class TicketDetailError extends TicketDetailState {}
