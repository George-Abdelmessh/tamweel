import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:native_notify/native_notify.dart';
import 'package:tamweel/layout/auth/login_options_screen.dart';
import 'package:tamweel/layout/home/home_screen.dart';
import 'package:tamweel/layout/onBoarding/onboarding_screen.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/network/local/cash_helper.dart';
import 'package:tamweel/shared/network/remote/dio_helper.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_locales.dart';
import 'package:tamweel/shared/style/app_theme.dart';

///Used to access context to show Alerts
final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO: IOS Orientation in XCode
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await EasyLocalization.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  await CacheHelper.tryLogin();
  // NativeNotify.initialize(1608, 'h3QulRMxibuTXkVjAXw01x', null, null);
  runApp(
    EasyLocalization(
      supportedLocales: AppLocales.supportedLocales,
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: AppLocales.supportedLocales[0],
      startLocale: AppLocales.supportedLocales[0],
      child: UncontrolledProviderScope(
        container: DioHelper.providerContainer!,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final bool firstUse =
      CacheHelper.getData(key: AppConst.firstUse) as bool? ?? true;

  @override
  void dispose() {
    DioHelper.providerContainer!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppHelper.closeKeyboard();
      },
      child: MaterialApp(
        navigatorKey: navigatorKey,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Tamweel',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appLightTheme,
        home: firstUse
            ? OnBoardingScreen()
            : CacheHelper.isLoggedIn
                ? HomeScreen()
                : const LoginOptionsScreen(),
      ),
    );
  }
}
