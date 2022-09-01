// ignore_for_file: use_build_context_synchronously, avoid_void_async

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamweel/Error/no_connection.dart';

class AppNavigator {
  /// NAVIGATOR PUSH
  static void push({
    required BuildContext context,
    required Widget screen,
    PageTransitionType type = PageTransitionType.fade,
  }) async {
    final hasInternet = await InternetConnectionChecker().hasConnection;

    if (hasInternet) {
      Navigator.push(context, PageTransition(type: type, child: screen));
    } else {
      Navigator.push(
        context,
        PageTransition(
            type: type,
            child: const NoConnection(
              text: 'تعذر الاتصال',
            )),
      );
    }
  }

  /// NAVIGATOR PUSH AND REMOVE
  static void pushAndRemove({
    required BuildContext context,
    required Widget screen,
    PageTransitionType type = PageTransitionType.fade,
  }) async {
    final hasInternet = await InternetConnectionChecker().hasConnection;

    if (hasInternet) {
      Navigator.pushAndRemoveUntil(
        context,
        PageTransition(type: type, child: screen),
        (route) => false,
      );
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        PageTransition(
            type: type,
            child: const NoConnection(
              text: 'تعذر الاتصال',
            )),
        (route) => false,
      );
    }
  }

  // /// App Routes to be used in the Material App routes, used for named navigation
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   LoginOptionsScreen.routeName: (context) => LoginOptionsScreen(),
  // };
}
