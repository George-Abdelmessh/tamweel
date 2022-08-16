import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamweel/layout/auth/login_options_screen.dart';

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

  // /// App Routes to be used in the Material App routes, used for named navigation
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   LoginOptionsScreen.routeName: (context) => LoginOptionsScreen(),
  // };
}
