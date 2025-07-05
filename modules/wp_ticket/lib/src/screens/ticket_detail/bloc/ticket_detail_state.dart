part of 'ticket_detail_bloc.dart';

sealed class TicketDetailState extends Equatable {
  const TicketDetailState();

  @override
  List<Object> get props => [];
}

final class TicketDetailInitial extends TicketDetailState {}

final class TicketDetailSuccess extends TicketDetailState {
  final TicketInfoModel? ticketInfo;
  final TemplateModel? ticketTemplate;

  const TicketDetailSuccess({this.ticketInfo, this.ticketTemplate});
}

final class TicketDetailError extends TicketDetailState {}
