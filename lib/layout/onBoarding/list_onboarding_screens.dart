import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:tamweel/shared/constants/app_image.dart';

class ListOnBoardingScreen {
  static final List<PageViewModel> pages = [
    PageViewModel(
      titleWidget: Text(
        'OnBoarding.LoginFirst'.tr(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: 'OnBoarding.LoginFirstBody'.tr(),
      image: Image.asset(AppImage.firstPage),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        'OnBoarding.ChosePlan'.tr(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: 'OnBoarding.ChosePlanBody'.tr(),
      image: Image.asset(
        AppImage.secondPage,
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        'OnBoarding.FillData'.tr(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: 'OnBoarding.FillDataBody'.tr(),
      image: Image.asset(AppImage.firstPage),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        'OnBoarding.Done'.tr(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body: 'OnBoarding.DoneBody'.tr(),
      image: Image.asset(AppImage.secondPage),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];
}
