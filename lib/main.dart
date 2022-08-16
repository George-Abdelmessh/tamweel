import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_screen.dart';
import 'package:tamweel/layout/onBoarding/onboarding_screen.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/network/local/cash_helper.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tamweel/shared/style/app_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  runApp(EasyLocalization(
      supportedLocales: AppLocales.supportedLocales,
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: AppLocales.supportedLocales[0],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final bool firstUse = CacheHelper.getData(key: AppConst.firstUse) ?? true;
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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: firstUse ? OnBoardingScreen() : HomeScreen(),
      ),
    );
  }
}
