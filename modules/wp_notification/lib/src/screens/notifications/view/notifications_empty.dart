import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/config/notification_assets.dart';

class NotificationsEmpty extends StatelessWidget {
  const NotificationsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(NotificationAssets.kNotificationEmptyPath),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSpacing.kSpace8,
                  horizontal: AppSpacing.kSpace16,
                ),
                child: Column(
                  spacing: AppSpacing.kSpace8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bạn chưa có thông báo mới',
                      style: context.textTheme.kTitle2.copyWith(
                        color: AppColor.wpTitleColor.value,
                      ),
                    ),
                    Text(
                      'Chúng tôi sẽ thông báo các tin quan trọng cách nhanh chóng. Bạn nhớ theo dõi nhé!',
                      style: context.textTheme.kBody1.copyWith(
                        color: AppColor.wpBodyColor.value,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
