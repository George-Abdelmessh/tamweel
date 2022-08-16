import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/constants/app_image.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding%20copy.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginOptionsScreen extends StatelessWidget {
  const LoginOptionsScreen({Key? key}) : super(key: key);
  static const routeName = '/login_options';

  static final _colors = [
    [
      AppColor.primaryDarker,
      AppColor.primaryDarker.withOpacity(0.5),
    ],
    [
      AppColor.secondary,
      AppColor.secondary.withOpacity(0.5),
    ],
    [
      AppColor.primary,
      AppColor.primary,
    ],
  ];

  static const _durations = [
    10000,
    9000,
    8000,
  ];

  static const _heightPercentages = [
    0.865,
    0.87,
    0.88,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        children: [
          SizedBox(
            height: AppSize.height,
            width: AppSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: AppSize.height * 0.125),
                Image.asset(AppImage.appLogoIconText),
                SizedBox(height: AppSize.height * 0.065),
                Padding(
                  padding: AppPaddingCopy.PaddingH005,
                  child: Image.asset(
                    AppImage.loginOptionsImage,
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                    height: AppSize.height * 0.4,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          WaveWidget(
            config: CustomConfig(
              // colors: _colors,
              durations: _durations,
              heightPercentages: _heightPercentages,
              gradients: _colors,
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            backgroundColor: AppColor.transparent,
            size: Size(double.infinity, double.infinity),
            waveAmplitude: 0,
          ),
          Positioned(
            bottom: AppSize.height * 0.1,
            left: 0,
            right: 0,
            child: ListView(
              shrinkWrap: true,
              physics: AppHelper.neverScroll,
              children: [
                SizedBox(
                  height: AppSize.height * 0.06,
                  width: AppSize.width,
                  child: Row(
                    children: [
                      Padding(
                        padding: AppPaddingCopy.PaddingH005,
                        child: SizedBox(
                          width: AppSize.width * 0.4,
                          child: CustomWideButton(
                            title: 'Auth.SignUp'.tr(),
                            onTap: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: AppPaddingCopy.PaddingH005,
                        child: SizedBox(
                          width: AppSize.width * 0.4,
                          child: CustomWideButton(
                            title: 'Auth.Login'.tr(),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.height * 0.035,
                ),
                Padding(
                  padding: AppPaddingCopy.PaddingH005,
                  child: CustomWideButton(
                    title: 'Auth.ContinueAsGuest'.tr(),
                    background: AppColor.secondary,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
