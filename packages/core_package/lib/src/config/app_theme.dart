import 'package:core_package/src/config/app_font_size.dart';
import 'package:flutter/material.dart';

extension AppTheme on TextTheme {
  TextStyle get kXXLRegular => const TextStyle(
        fontSize: AppFontSize.kRegularFontSize,
        fontWeight: FontWeight.normal,
      );
}
