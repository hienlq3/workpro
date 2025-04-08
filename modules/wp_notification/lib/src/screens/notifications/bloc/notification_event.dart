part of 'notification_bloc.dart';

sealed class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<Object> get props => [];
}

final class NotificationFetched extends NotificationEvent {}

final class NotificationsMarked extends NotificationEvent {
  final dynamic id;

  const NotificationsMarked({required this.id});

  @override
  List<Object> get props => [id];
}

final class NotificationsRefreshed extends NotificationEvent {}
