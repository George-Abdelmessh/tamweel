import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/auth/app_user_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/constants/app_image.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding%20copy.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/validators/app_validators.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //form keys and text editing controllers
    final formKey = GlobalKey<FormState>();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final authProvider = ref.watch(authNotifierProvider.notifier);
    void Login() async {
      //form is valid, perform login
      if (formKey.currentState!.validate()) {
        //show a loading indicator dialog
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => Center(
            child: CircularProgressIndicator(
              color: AppColor.primary,
            ),
          ),
        );
        //login
        await authProvider.login(emailController.text, passwordController.text);
        //hide the loading indicator dialog
        Navigator.of(context).pop();
      }
    }

    return SafeArea(
        child: Scaffold(
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
                SizedBox(
                  height: AppSize.height * 0.05,
                ),
                Text(
                  'Auth.Login'.tr(),
                  style: TextStyle(
                    fontSize: AppSize.width * 0.075,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primary,
                  ),
                ),
                Image.asset(
                  AppImage.loginWelcomeImage,
                  fit: BoxFit.cover,
                  height: AppSize.height * 0.3,
                ),
                SizedBox(height: AppSize.height * 0.05),
                Padding(
                  padding: AppPaddingCopy.PaddingH005,
                  child: customTextFormFieldWithValidator(
                    context,
                    controller: emailController,
                    validator: (value) => AppValidators.email(value),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Auth.Email'.tr(),
                    prefixWidget: Padding(
                      padding: AppPadding.padding20,
                      child: Icon(
                        Icons.email_outlined,
                        color: AppColor.secondary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.height * 0.025),
                Padding(
                  padding: AppPaddingCopy.PaddingH005,
                  child: customTextFormFieldWithValidator(
                    context,
                    controller: passwordController,
                    validator: (value) => AppValidators.password(value),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Auth.Password'.tr(),
                    prefixWidget: Padding(
                      padding: AppPadding.padding20,
                      child: Icon(
                        Icons.lock_outline,
                        color: AppColor.secondary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: AppSize.height * 0.05),
                Padding(
                  padding: AppPaddingCopy.PaddingH005,
                  child: CustomWideButton(
                      title: 'Auth.Login'.tr(), onTap: () => Login()),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
