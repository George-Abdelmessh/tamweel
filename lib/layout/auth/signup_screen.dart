import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/auth/widgets/signup/first_step_form.dart';
import 'package:tamweel/layout/auth/widgets/signup/second_step_form.dart';
import 'package:tamweel/layout/auth/widgets/signup/signup_welcome.dart';
import 'package:tamweel/layout/auth/widgets/signup/third_step_form.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_floating_back_button.dart';
import 'package:tamweel/shared/custom_widgets/custom_hud.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';

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

    final step = ref.watch(signupFormNotifierProvider);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const CustomFloatingBackButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        backgroundColor: AppColor.white,
        //welcome image then login form
        body: CustomHudWidget(
          child: SingleChildScrollView(
            physics: AppHelper.scroll,
            child: SizedBox(
              height: AppSize.height * 1.5,
              width: AppSize.width,
              child: Column(
                children: [
                  const SignUpWelcome(),
                  AnimatedSwitcherTranslation.right(
                    switchOutCurve: Curves.easeOut,
                    duration: const Duration(seconds: 1),
                    child: step == 0
                        ? FirstStepForm(
                            key: UniqueKey(),
                            emailController: emailController,
                            nameController: nameController,
                            nationalIdController: personalIdController,
                            phoneController: phoneController,
                          )
                        : step == 1
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
      ),
    );
  }
}
