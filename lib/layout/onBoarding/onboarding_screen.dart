import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamweel/layout/home/home_screen.dart';
import 'package:tamweel/layout/onBoarding/list_onboarding_screens.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/navigation/app_navigator.dart';
import 'package:tamweel/shared/network/local/cash_helper.dart';
import 'package:tamweel/shared/style/app_color.dart';

class OnBoardingScreen extends StatelessWidget {
  static bool firstUse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: IntroductionScreen(
            pages: ListOnBoardingScreen.pages,
            dotsDecorator: const DotsDecorator(
              size: Size(10, 10),
              color: AppColor.grey,
              activeSize: Size.square(15.0),
              activeColor: AppColor.primary,
            ),
            done: Text(
              'OnBoarding.OnDone'.tr(),
              style: const TextStyle(
                fontSize: 20.0,
                color: AppColor.primary,
              ),
            ),
            showSkipButton: true,
            skip: Text(
              'OnBoarding.OnSkip'.tr(),
              style: const TextStyle(
                fontSize: 20.0,
                color: AppColor.primary,
              ),
            ),
            next: const Icon(
              Icons.arrow_forward,
              size: 20.0,
              color: AppColor.primary,
            ),
            onDone: () => onDone(context),
            curve: Curves.decelerate,
          ),
        ),
      ),
    );
  }

  void onDone(BuildContext context) {
    CacheHelper.saveData(
      key: AppConst.firstUse,
      value: firstUse,
    );
    AppNavigator.pushAndRemove(
      context: context,
      type: PageTransitionType.leftToRight,

      /// Navigate to login Screen
      screen: HomeScreen(),
    );
  }
}
