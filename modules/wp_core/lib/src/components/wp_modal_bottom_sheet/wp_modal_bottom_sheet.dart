import 'package:flutter/material.dart';
import 'package:wp_core/src/components/wp_modal_bottom_sheet/wp_modal_bottom_sheet_builder.dart';
import 'package:wp_core/wp_core.dart';

class WpModalBottomSheet {
  static Future<void> showWpModalBottomSheet({
    required BuildContext context,
    required String title,
    required Widget child,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.kLargeBorderRadius),
        ),
      ),
      builder: (_) => WpModalBottomSheetBuilder(title: title, child: child),
    );
  }
}
