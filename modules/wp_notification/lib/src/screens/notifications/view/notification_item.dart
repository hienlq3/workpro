import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/config/notification_assets.dart';
import 'package:wp_notification/src/models/notification_model.dart';
import 'package:wp_notification/src/screens/notifications/bloc/notification_bloc.dart';

class NotificationItem extends StatelessWidget {
  final int notificationId;

  const NotificationItem({super.key, required this.notificationId});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NotificationBloc, NotificationState, NotificationModel>(
      selector: (state) {
        return state.notifications.firstWhere(
          (notification) => notification.notificationId == notificationId,
        );
      },
      builder: (context, notification) {
        return InkWell(
          key: ValueKey(notification.notificationId),
          onTap: () {
            if (notification.unread != false) {
              context.read<NotificationBloc>().add(
                NotificationsMarked(id: notification.notificationId),
              );
            }
          },
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.kSpace16),
            color:
                notification.unread == true
                    ? AppColor.wpPrimaryBackgroundColor.value
                    : null,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacing.kSpace12,
              children: [
                SvgPicture.asset(
                  notification.unread == true
                      ? NotificationAssets.kIcApproveUnreadPath
                      : NotificationAssets.kIcApprovePath,
                ),
                Flexible(
                  child: Column(
                    spacing: AppSpacing.kSpace8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Eapprove',
                        style: context.textTheme.kTitle5.copyWith(
                          color: AppColor.wpTitleColor.value,
                        ),
                      ),
                      Html(
                        data: notification.message ?? '',
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
                      ),
                      Text(
                        notification.recordedTime?.toFormattedDate() ?? '',
                        style: context.textTheme.kSubtitle3.copyWith(
                          color: AppColor.wpSubtitleColor.value,
                        ),
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
