part of 'notification_bloc.dart';

enum NotificationStatus { initial, loading, success, error }

final class NotificationState extends Equatable {
  final NotificationStatus status;
  final List<NotificationModel> notifications;
  final bool hasReachedMax;

  const NotificationState({
    this.status = NotificationStatus.initial,
    this.notifications = const <NotificationModel>[],
    this.hasReachedMax = false,
  });

  NotificationState copyWith({
    NotificationStatus? status,
    List<NotificationModel>? notifications,
    bool? hasReachedMax,
  }) {
    return NotificationState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [status, notifications, hasReachedMax];

  bool get isInitial => status == NotificationStatus.initial;
}
