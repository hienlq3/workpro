import 'package:flutter/material.dart';
import 'package:wp_core/src/config/app_radius.dart';
import 'package:wp_core/src/config/app_spacing.dart';
import 'package:wp_core/src/config/app_theme.dart';
import 'package:wp_core/src/utils/extensions/build_context.dart';

class WpModalBottomSheetBuilder extends StatelessWidget {
  final String title;
  final Widget child;
  const WpModalBottomSheetBuilder({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: AppSpacing.kSpace8),
          width: 32.0,
          height: 4.0,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(AppRadius.kMaxBorderRadius),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSpacing.kSpace16),
          child: Text(
            title,
            style: context.textTheme.kTitle3.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
