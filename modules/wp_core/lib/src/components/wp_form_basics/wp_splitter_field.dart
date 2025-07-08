import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';

class WpSplitterField extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const WpSplitterField({
    super.key,
    required this.children,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: context.textTheme.kTitle4),
      textColor: AppColor.wpTypographyLabelColor,
      backgroundColor: Colors.white,
      collapsedBackgroundColor: Colors.white,
      shape: LinearBorder.bottom(
        side: BorderSide(color: AppColor.wpBorderBorder1Color),
      ),
      collapsedShape: LinearBorder.none,
      children: children,
      showTrailingIcon: false,
      childrenPadding: EdgeInsets.only(bottom: AppSpacing.kSpace8),
      tilePadding: EdgeInsets.zero,
      visualDensity: VisualDensity(vertical: -1),
      maintainState: true,
    );
  }
}
