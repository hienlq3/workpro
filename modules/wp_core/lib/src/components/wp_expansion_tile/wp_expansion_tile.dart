import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';

class WpExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const WpExpansionTile({
    super.key,
    required this.children,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: context.textTheme.kTitle3),
      textColor: AppColor.wpTitleColor.value,
      iconColor: AppColor.wpSubtitleColor.value,
      backgroundColor: Colors.white,
      collapsedBackgroundColor: Colors.white,
      shape: LinearBorder.none,
      collapsedShape: LinearBorder.none,
      children: children,
      visualDensity: VisualDensity.comfortable,
      childrenPadding: EdgeInsets.symmetric(horizontal: AppSpacing.kSpace16),
      maintainState: true,
    );
  }
}
