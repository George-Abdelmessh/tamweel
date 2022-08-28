/// This for all app colors

import 'package:flutter/material.dart';

class AppColor {
  /// WHITE COLOR
  static const Color white = Color(0xffffffff);

  /// BLACK COLOR
  static const Color black = Color(0xff000000);

  static const Color container = Color.fromARGB(255, 44, 44, 51);

  /// OVER LAY COLOR [ BLACK WITH OPACITY 0.3 ]
  static Color overlay = black.withOpacity(0.3);

  /// GREY COLOR
  static const Color grey = Color(0xffF4F4F4);

  static const Color shimmer = Color.fromARGB(255, 205, 198, 198);

  /// PRIMARY COLOR IN APP
  static const Color primary = Color(0xffB68922);
  static const Color primaryDarker = Color.fromARGB(255, 154, 115, 24);

  /// SECONDARY COLOR IN APP
  static const Color secondary = Color(0xff1FBCC3);

  ///Error Color for Text fields
  static const Color error = Colors.red;

  ///Transparent color
  static const Color transparent = Colors.transparent;
}
