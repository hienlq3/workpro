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

  TextStyle get kTitle2 => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      );

  TextStyle get kLabel2 => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      );

  TextStyle get kTextButton1 => const TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      );
}
