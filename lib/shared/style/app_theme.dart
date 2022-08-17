import 'package:flutter/material.dart';

import 'package:tamweel/shared/style/app_color.dart';

class AppTheme {
  static ThemeData appLightTheme = ThemeData(
    ///fontFamily: 'custom_font',
    primaryColor: AppColor.primary,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColor.primary),
    scaffoldBackgroundColor: AppColor.white,
    unselectedWidgetColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColor.white),
      titleTextStyle: TextStyle(
        fontSize: 20.0,

        ///fontFamily: 'custom_font',
        fontWeight: FontWeight.bold,
        color: AppColor.white,
      ),
      elevation: 0.0,
      centerTitle: true,
      titleSpacing: 20.0,
      backgroundColor: AppColor.primary,
    ),
    drawerTheme: const DrawerThemeData(
      elevation: 0.0,
      backgroundColor: AppColor.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.white,
      selectedItemColor: AppColor.primary,
      unselectedItemColor: AppColor.grey,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
