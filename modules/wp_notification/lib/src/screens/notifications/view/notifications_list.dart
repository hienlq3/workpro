import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_notification/src/screens/notifications/bloc/notification_bloc.dart';
import 'package:wp_notification/src/screens/notifications/view/notification_item.dart';
import 'package:wp_notification/src/screens/notifications/view/notifications_empty.dart';

class NotificationsList extends StatefulWidget {
  const NotificationsList({super.key});

  @override
  State<NotificationsList> createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<NotificationBloc>().add(NotificationFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        switch (state.status) {
          case NotificationStatus.empty:
            return const NotificationsEmpty();

          case NotificationStatus.success:
            return SafeArea(
              child: RefreshIndicator(
                onRefresh:
                    () async => context.read<NotificationBloc>().add(
                      NotificationFetched(isRefresh: true),
                    ),
                child: ListView.separated(
                  controller: _scrollController,
                  itemCount: state.notifications.length,
                  itemBuilder: (context, index) {
                    final notificationId =
                        state.notifications[index].notificationId;
                    return NotificationItem(
                      key: ValueKey(notificationId),
                      notificationId: notificationId,
                    );
                  },
                  separatorBuilder:
                      (context, index) => const Divider(height: 1),
                ),
              ),
            );

          case NotificationStatus.error:
            return const Center(child: Text('Failed to load notifications.'));

          default:
            return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
