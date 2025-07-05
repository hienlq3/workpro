import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';

class WpRowDetail extends StatelessWidget {
  final String title;
  final String value;
  const WpRowDetail({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.kSpace16,
        vertical: AppSpacing.kSpace12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              '$title:',
              style: context.textTheme.kSubtitle2.copyWith(
                color: AppColor.wpTypographySubtitleColor,
              ),
            ),
          ),
          Expanded(
            child: SelectableText(
              value,
              style: context.textTheme.kTitle6.copyWith(
                color: AppColor.wpTypographyLabelColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
