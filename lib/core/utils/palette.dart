import 'package:flutter/material.dart';

class Palette {
  static const themeColor = Color(0xffF3F3F3);
  static const counterColor = Color(0xff333333);
  static const primarySwatch = MaterialColor(
    0xff333333,
    <int, Color>{
      50: counterColor,
      100: counterColor,
      200: counterColor,
      300: counterColor,
      400: counterColor,
      500: counterColor,
      600: counterColor,
      700: counterColor,
      800: counterColor,
      900: counterColor,
    },
  );
}
