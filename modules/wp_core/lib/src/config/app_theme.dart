import 'package:flutter/material.dart';
import 'package:wp_core/src/config/app_font_size.dart';

extension AppTheme on TextTheme {
  TextStyle get kSmallRegular => const TextStyle(
    fontSize: AppFontSize.kSmallFontSize,
    fontWeight: FontWeight.normal,
  );

  TextStyle get kXXLRegular => const TextStyle(
    fontSize: AppFontSize.kXXLFontSize,
    fontWeight: FontWeight.normal,
  );

  TextStyle get kTitle2 =>
      const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600);

  TextStyle get kTitle3 =>
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600);

  TextStyle get kTitle6 =>
      const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

  TextStyle get kLabel2 =>
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);

  TextStyle get kTextButton1 =>
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600);

  TextStyle get kTextButton5 =>
      const TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal);

  TextStyle get kBody1 =>
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);
}
