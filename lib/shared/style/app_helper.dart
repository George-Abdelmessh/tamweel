import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHelper {
  /// Physics list view
  static BouncingScrollPhysics scroll = const BouncingScrollPhysics();
  static NeverScrollableScrollPhysics neverScroll =
      const NeverScrollableScrollPhysics();

  /// OPEN URL
  static Future openUrl({required String url}) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      const SnackBar(
        content: Text('يوجد خطأ في الرابط'),
      );

      ///AppDialog.toast(msg: 'يوجد خطأ في الرابط');
    }
  }

  /// CLOSE KEYBOARD
  static Future closeKeyboard() async {
    /// CLOSE KEYBOARD
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
