import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_core/injection.dart';
import 'package:wp_notification/src/repositories/notification_repository.dart';
import 'package:wp_notification/src/screens/notifications/bloc/notification_bloc.dart';
import 'package:wp_notification/src/screens/notifications/view/notifications_list.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => NotificationBloc(
            notificationRepository: getIt<NotificationRepository>(),
          )..add(NotificationFetched()),
      child: const NotificationsList(),
    );
  }
}
