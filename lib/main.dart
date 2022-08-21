import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/auth/login_options_screen.dart';
import 'package:tamweel/layout/onBoarding/onboarding_screen.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/network/local/cash_helper.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_locales.dart';
import 'package:tamweel/shared/style/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  runApp(
    EasyLocalization(
      supportedLocales: AppLocales.supportedLocales,
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: AppLocales.supportedLocales[0],
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final bool firstUse =
      CacheHelper.getData(key: AppConst.firstUse) as bool? ?? true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppHelper.closeKeyboard();
      },
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Tamweel',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appLightTheme,
        home: firstUse ? OnBoardingScreen() : const LoginOptionsScreen(),
      ),
    );
  }
}
