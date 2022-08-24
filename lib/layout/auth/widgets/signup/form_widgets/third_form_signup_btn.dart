import 'dart:core';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:vibration/vibration.dart';

class ThirdFormSignupButtons extends ConsumerWidget {
  const ThirdFormSignupButtons({
    super.key,
    required this.formKey,
    required this.repeatOnceCity,
    required this.repeatOnceGov,
    required this.signup,
  });

  final GlobalKey<FormState> formKey;
  final Function repeatOnceGov;
  final Function repeatOnceCity;
  final Function signup;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(height: AppSize.height * 0.04),
        Row(
          children: [
            Expanded(
              child: CustomWideButton(
                title: 'Navigation.Back'.tr(),
                background: AppColor.secondary,
                onTap: () {
                  AppHelper.closeKeyboard();
                  ref.read(signupFormNotifierProvider.notifier).previousStep();
                },
              ),
            ),
            SizedBox(
              width: AppSize.width * 0.05,
            ),
            Expanded(
              child: CustomWideButton(
                title: 'Auth.SignUp'.tr(),
                onTap: () async {
                  final hasVibrator = ref.read(canvibrateProvider);
                  final hasController = ref.read(hasVibrationController);
                  //form is valid, perform login
                  if (formKey.currentState!.validate()) {
                    if (ref.read(governorateProvider.notifier).state ==
                        'Auth.Governorate'.tr()) {
                      if (hasVibrator) {
                        if (hasController) {
                          Vibration.vibrate(amplitude: 50, duration: 400);
                        } else {
                          Vibration.vibrate();
                        }
                      }
                      await repeatOnceGov();
                      return;
                    }
                    if (ref.read(cityProvider.notifier).state ==
                        'Auth.City'.tr()) {
                      if (hasVibrator) {
                        if (hasController) {
                          Vibration.vibrate(amplitude: 50, duration: 400);
                        } else {
                          Vibration.vibrate();
                        }
                      }
                      await repeatOnceCity();
                      return;
                    }
                    AppHelper.closeKeyboard();
                    signup();
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
