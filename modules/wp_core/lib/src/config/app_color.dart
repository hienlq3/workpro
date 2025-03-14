import 'package:flutter/material.dart';

class AppColor {
  static ValueNotifier<Color> wpPrimaryColor = ValueNotifier(Color(0xFF366AE2));

  static void setPrimaryColor(String hexColor) {
    Color color = Color(int.parse(hexColor.replaceFirst("#", "0xFF")));
    wpPrimaryColor.value = color;
  }
}
