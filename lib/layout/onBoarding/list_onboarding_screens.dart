import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:tamweel/shared/constants/app_image.dart';

class ListOnBoardingScreen {
  static final List<PageViewModel> pages = [
    PageViewModel(
      titleWidget: const Text(
        'سجل دخول اولاً',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body:
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
      image: Image.asset(AppImage.firstPage),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      titleWidget: const Text(
        'اختار الخطة المناسبة',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body:
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
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
      titleWidget: const Text(
        'املاء البيانات',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      body:
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
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
      body:
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.',
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
