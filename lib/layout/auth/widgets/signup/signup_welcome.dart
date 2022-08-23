import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:im_stepper/stepper.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/constants/app_image.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';

class SignUpWelcome extends ConsumerWidget {
  const SignUpWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeStep = ref.watch(signupFormNotifierProvider);
    return Column(
      children: [
        SizedBox(
          height: AppSize.height * 0.018,
        ),
        Text(
          'Auth.Login'.tr(),
          style: TextStyle(
            fontSize: AppSize.width * 0.075,
            fontWeight: FontWeight.bold,
            color: AppColor.primary,
          ),
        ),
        SizedBox(
          height: AppSize.height * 0.02,
        ),
        Image.asset(
          AppImage.signupWelcomeImage,
          fit: BoxFit.cover,
          height: AppSize.height * 0.25,
        ),
        Padding(
          padding: AppPaddingCopy.paddingH005,
          child: IconStepper(
            icons: const [
              Icon(
                Icons.person_outline_rounded,
                color: AppColor.white,
              ),
              Icon(
                Icons.lock_outline,
                color: AppColor.white,
              ),
              Icon(
                Icons.flag_outlined,
                color: AppColor.white,
              ),
            ],
            // activeStep property set to activeStep variable defined above.
            activeStep: activeStep,
            activeStepBorderColor: AppColor.transparent,
            activeStepColor: AppColor.secondary,
            activeStepBorderWidth: 2,
            enableNextPreviousButtons: false,
            enableStepTapping: false,
            // onStepReached: (index) {
            //   authProvider.state = index;
            // },
            lineColor: AppColor.primary,
            lineLength: AppSize.width * 0.1,
            scrollingDisabled: true,
            stepReachedAnimationEffect: Curves.easeIn,
          ),
        ),
      ],
    );
  }
}
