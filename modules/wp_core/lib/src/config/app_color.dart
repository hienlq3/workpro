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

  static void setPrimaryColor(String hexColor) {
    final color = Color(int.parse(hexColor.replaceFirst('#', '0xFF')));
    wpPrimaryColor.value = color;
  }
}
