import 'package:flutter/material.dart';

class AppRadius {
  /// constants app Border Radius
  /// 10
  static BorderRadius radius10 = BorderRadius.circular(10.0);

  /// 20
  static BorderRadius radius20 = BorderRadius.circular(20.0);

  /// TOP 30
  static BorderRadius radiusTop30 = const BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  );
}
