import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:im_stepper/stepper.dart';
import 'package:tamweel/layout/auth/widgets/first_step_form.dart';
import 'package:tamweel/layout/auth/widgets/second_step_form.dart';
import 'package:tamweel/layout/auth/widgets/signup_welcome.dart';
import 'package:tamweel/layout/auth/widgets/third_step_form.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';

class SignupScreen extends StatefulHookConsumerWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final addressController = useTextEditingController();
    final personalIdController = useTextEditingController();

    final authProvider = ref.watch(signupFormNotifierProvider.notifier);

    final activeStep = ref.watch(signupFormNotifierProvider);

    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: AppPadding.paddingV20,
          child: FloatingActionButton(
            backgroundColor: AppColor.transparent,
            elevation: 0,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.secondary,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        backgroundColor: AppColor.white,
        //welcome image then login form
        body: SingleChildScrollView(
          physics: AppHelper.scroll,
          child: SizedBox(
            height: AppSize.height * 1.5,
            width: AppSize.width,
            child: Column(
              children: [
                const SignUpWelcome(),
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
                AnimatedSwitcherTranslation.right(
                  switchOutCurve: Curves.easeOut,
                  duration: const Duration(seconds: 1),
                  child: authProvider.step == 0
                      ? FirstStepForm(
                          key: UniqueKey(),
                          emailController: emailController,
                          nameController: nameController,
                          nationalIdController: personalIdController,
                          phoneController: phoneController,
                        )
                      : authProvider.step == 1
                          ? SecondStepForm(
                              key: UniqueKey(),
                              passwordController: passwordController,
                              confirmPasswordController:
                                  confirmPasswordController,
                            )
                          : ThirdStepForm(
                              addressController: addressController,
                              emailController: emailController,
                              nameController: nameController,
                              nationalIdController: personalIdController,
                              phoneController: phoneController,
                              passwordController: passwordController,
                            ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
