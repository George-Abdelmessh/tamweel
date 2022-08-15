import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppNavigator {
  /// NAVIGATOR PUSH
  static void push({
    required context,
    required screen,
    type = PageTransitionType.fade,
  }) {
    Navigator.push(context, PageTransition(type: type, child: screen));
  }

  /// NAVIGATOR PUSH AND REMOVE
  static void pushAndRemove({
    required context,
    required screen,
    type = PageTransitionType.fade,
  }) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(type: type, child: screen),
          (route) => false,
    );
  }
}
