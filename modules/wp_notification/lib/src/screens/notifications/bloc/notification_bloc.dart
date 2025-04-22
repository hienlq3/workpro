import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:wp_notification/src/models/notification_model.dart';
import 'package:wp_notification/src/repositories/notification_repository.dart';

part 'notification_event.dart';
part 'notification_state.dart';

const _notificationLimit = 15;
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc({required NotificationRepository notificationRepository})
    : _notificationRepository = notificationRepository,
      super(const NotificationState()) {
    on<NotificationFetched>(
      _onFetched,
      transformer: throttleDroppable(throttleDuration),
    );
    on<NotificationsMarked>(_onNotificationsMarked);
  }
  final NotificationRepository _notificationRepository;

  Future<void> _onFetched(
    NotificationFetched event,
    Emitter<NotificationState> emit,
  ) async {
    if (!event.isRefresh && state.hasReachedMax) return;

    try {
      final isInitial = event.isRefresh || state.isInitial;

      final fetchedNotifications = await _notificationRepository
          .notificationsFetch(
            page:
                isInitial
                    ? 0
                    : state.notifications.length ~/ _notificationLimit,
          );

      if (isInitial && fetchedNotifications.isEmpty) {
        emit(
          state.copyWith(
            status: NotificationStatus.empty,
            notifications: [],
            hasReachedMax: true,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: NotificationStatus.success,
            notifications:
                isInitial
                    ? fetchedNotifications
                    : [...state.notifications, ...fetchedNotifications],
            hasReachedMax: fetchedNotifications.length < _notificationLimit,
          ),
        );
      }
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      emit(state.copyWith(status: NotificationStatus.error));
    }
  }

  Future<void> _onNotificationsMarked(
    NotificationsMarked event,
    Emitter<NotificationState> emit,
  ) async {
    final currentState = state;
    final updatedNotifications =
        currentState.notifications.map((notification) {
          if (notification.notificationId == event.id || event.id == 'all') {
            return notification.copyWith(unread: false);
          }
          return notification;
        }).toList();
    emit(state.copyWith(notifications: updatedNotifications));
    try {
      _notificationRepository.notificationsMarked(id: event.id);
    } catch (error, trace) {
      final rollbackNotifications = currentState.notifications;
      onError(error, trace);
      emit(state.copyWith(notifications: rollbackNotifications));
    }
  }
}
