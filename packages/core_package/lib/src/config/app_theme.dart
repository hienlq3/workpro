import 'package:core_package/src/config/app_font_size.dart';
import 'package:flutter/material.dart';

extension AppTheme on TextTheme {
  TextStyle get kSmallRegular => const TextStyle(
        fontSize: AppFontSize.kSmallFontSize,
        fontWeight: FontWeight.normal,
      );

  TextStyle get kXXLRegular => const TextStyle(
        fontSize: AppFontSize.kXXLFontSize,
        fontWeight: FontWeight.normal,
      );
}
