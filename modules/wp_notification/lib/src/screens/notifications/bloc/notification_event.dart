part of 'notification_bloc.dart';

sealed class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<dynamic> get props => [];
}

final class NotificationFetched extends NotificationEvent {
  final bool isRefresh;
  const NotificationFetched({this.isRefresh = false});
}

final class NotificationsMarked extends NotificationEvent {
  const NotificationsMarked({required this.id});
  final dynamic id;

  @override
  List<dynamic> get props => [id];
}
