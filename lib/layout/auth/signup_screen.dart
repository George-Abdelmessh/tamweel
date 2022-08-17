import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:im_stepper/stepper.dart';
import 'package:tamweel/layout/auth/widgets/signup_welcome.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';

class SignupScreen extends HookConsumerWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //form keys and text editing controllers
    final formKey = GlobalKey<FormState>();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    // final confirmPasswordController = useTextEditingController();
    // final nameController = useTextEditingController();
    // final phoneController = useTextEditingController();
    // final addressController = useTextEditingController();
    // final personalIdController = useTextEditingController();
    // const bool isMale = false;
    // const String Governorate = '';
    // const String city = '';
    // const maritalStatus userMaritalStatus = maritalStatus.single;
    final authProvider = ref.watch(signupFormNotifierProvider.notifier);

    // THE FOLLOWING TWO VARIABLES ARE REQUIRED TO CONTROL THE STEPPER.
    final activeStep =
        ref.watch(signupFormNotifierProvider); // Initial step set to 5.

    Future<void> signup() async {
      //form is valid, perform login
      if (formKey.currentState!.validate()) {
        //show a loading indicator dialog
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
            child: CircularProgressIndicator(
              color: AppColor.primary,
            ),
          ),
        );
        //login
        await authProvider
            .signUp(
              email: emailController.text,
              password: passwordController.text,
              confirmPassword: passwordController.text,
              name: '',
              phone: '',
              address: '',
              personalId: '',
              isMale: false,
              userMaritalStatus: MaritalStatus.single,
              governorate: '',
              city: '',
            )
            .then(
              (value) => //hide the loading indicator dialog
                  Navigator.of(context).pop(),
            );
      }
    }

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
            height: AppSize.height,
            width: AppSize.width,
            child: Form(
              key: formKey,
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
                      lineColor: AppColor.primary,
                      lineLength: AppSize.width * 0.3,
                      scrollingDisabled: true,
                      stepReachedAnimationEffect: Curves.bounceIn,
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
