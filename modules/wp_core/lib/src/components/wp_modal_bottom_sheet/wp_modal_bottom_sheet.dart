import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_core/src/components/wp_modal_bottom_sheet/wp_modal_bottom_sheet_builder.dart';

class WpModalBottomSheet {
  static void showWpModalBottomSheet({
    required BuildContext context,
    required String title,
    required Widget child,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.kLargeBorderRadius),
        ),
      ),
      builder: (_) => WpModalBottomSheetBuilder(title: title, child: child),
    );
  }
}
