import 'package:flutter/material.dart';

class AppColor {
  static ValueNotifier<Color> wpPrimaryColor = ValueNotifier(
    const Color(0xFF366AE2),
  );
  static ValueNotifier<Color> wpPrimaryBackgroundColor = ValueNotifier(
    const Color(0xFFEDF2FD),
  );
  static ValueNotifier<Color> wpBodyColor = ValueNotifier(
    const Color(0xFF666666),
  );
  static ValueNotifier<Color> wpTitleColor = ValueNotifier(
    const Color(0xFF1C2430),
  );
  static ValueNotifier<Color> wpSubtitleColor = ValueNotifier(
    const Color(0xFF8C8C8C),
  );

  static const Color wpBackgroundGrey1Color = Color(0xFFF2F5F8);
  static const Color wpTypographyLabelColor = Color(0xFF394960);
  static const Color wpBorderBorder1Color = Color(0xFFF2F4F8);
  static const Color wpTypographySubtitleColor = Color(0xFF6E87AA);

  static void setPrimaryColor(String hexColor) {
    final color = Color(int.parse(hexColor.replaceFirst('#', '0xFF')));
    wpPrimaryColor.value = color;
  }
}
