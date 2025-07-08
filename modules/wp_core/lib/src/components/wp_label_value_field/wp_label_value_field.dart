import 'package:flutter/material.dart';
import 'package:wp_core/src/config/config.dart';
import 'package:wp_core/src/utils/extensions/build_context.dart';

class WpLabelValueField extends StatelessWidget {
  final String title;
  final String value;
  const WpLabelValueField({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.kSpace12),
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
