import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamweel/layout/auth/login_screen.dart';
import 'package:tamweel/layout/auth/signup_screen.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/navigation/app_navigator.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';

class LoginOptionsButtons extends StatelessWidget {
  const LoginOptionsButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppSize.height * 0.1,
      left: 0,
      right: 0,
      child: ListView(
        shrinkWrap: true,
        physics: AppHelper.neverScroll,
        children: [
          SizedBox(
            height: AppSize.height * 0.05,
            width: AppSize.width,
            child: Row(
              children: [
                SizedBox(width: AppSize.width * 0.05),
                SizedBox(
                  width: AppSize.width * 0.425,
                  child: CustomWideButton(
                    title: 'Auth.Login'.tr(),
                    onTap: () {
                      AppNavigator.push(
                        context: context,
                        screen: const LoginScreen(),
                        type: PageTransitionType.bottomToTop,
                      );
                    },
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: AppSize.width * 0.425,
                  child: CustomWideButton(
                    title: 'Auth.SignUp'.tr(),
                    onTap: () {
                      AppNavigator.push(
                        context: context,
                        screen: const SignupScreen(),
                        type: PageTransitionType.bottomToTop,
                      );
                    },
                  ),
                ),
                SizedBox(width: AppSize.width * 0.05),
              ],
            ),
          ),
          SizedBox(
            height: AppSize.height * 0.035,
          ),
          Padding(
            padding: AppPaddingCopy.paddingH005,
            child: CustomWideButton(
              title: 'Auth.ContinueAsGuest'.tr(),
              background: AppColor.secondary,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
