part of 'notification_bloc.dart';

sealed class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<dynamic> get props => [];
}

final class NotificationFetched extends NotificationEvent {}

final class NotificationsMarked extends NotificationEvent {
  const NotificationsMarked({required this.id});
  final dynamic id;

  @override
  List<dynamic> get props => [id];
}

final class NotificationsRefreshed extends NotificationEvent {}
