import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/config/notification_assets.dart';
import 'package:wp_notification/src/models/notification_model.dart';
import 'package:wp_notification/src/screens/notifications/bloc/notification_bloc.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({required this.notificationId, super.key});
  final int notificationId;

  @override
  Widget build(BuildContext context) {
    log('rebuild');
    return BlocSelector<NotificationBloc, NotificationState, NotificationModel>(
      selector: (state) {
        return state.notifications.firstWhere(
          (notification) => notification.notificationId == notificationId,
        );
      },
      builder: (context, notification) {
        return InkWell(
          onTap: () {
            if (notification.unread ?? false) {
              context.read<NotificationBloc>().add(
                NotificationsMarked(id: notification.notificationId),
              );
            }
          },
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.kSpace16),
            color:
                notification.unread ?? false
                    ? AppColor.wpPrimaryBackgroundColor.value
                    : null,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.kSpace12,
              children: [
                _NotificationIcon(unread: notification.unread ?? false),
                Flexible(
                  child: Column(
                    spacing: AppSpacing.kSpace8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _NotificationTitle(),
                      _NotificationMessage(message: notification.message ?? ''),
                      _NotificationTime(
                        recordedTime:
                            notification.recordedTime?.toFormattedDate() ?? '',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _NotificationIcon extends StatelessWidget {
  const _NotificationIcon({required this.unread});
  final bool unread;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      unread
          ? NotificationAssets.kIcApproveUnreadPath
          : NotificationAssets.kIcApprovePath,
    );
  }
}

class _NotificationTitle extends StatelessWidget {
  const _NotificationTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Eapprove',
      style: context.textTheme.kTitle5.copyWith(
        color: AppColor.wpTitleColor.value,
      ),
    );
  }
}

class _NotificationMessage extends StatelessWidget {
  const _NotificationMessage({required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: message,
      style: {
        '*': Style(
          margin: Margins.zero,
          padding: HtmlPaddings.zero,
          fontSize: FontSize.medium,
          fontWeight: FontWeight.normal,
          fontFamily: 'Intel',
          color: AppColor.wpBodyColor.value,
        ),
        'strong': Style(
          fontSize: FontSize.medium,
          fontWeight: FontWeight.w600,
          fontFamily: 'Intel',
          color: AppColor.wpPrimaryColor.value,
        ),
      },
    );
  }
}

class _NotificationTime extends StatelessWidget {
  const _NotificationTime({required this.recordedTime});
  final String recordedTime;

  @override
  Widget build(BuildContext context) {
    return Text(
      recordedTime,
      style: context.textTheme.kSubtitle3.copyWith(
        color: AppColor.wpSubtitleColor.value,
      ),
    );
  }
}
