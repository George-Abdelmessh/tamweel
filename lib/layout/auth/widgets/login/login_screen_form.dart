import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/validators/app_validators.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.login,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function login;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppPaddingCopy.paddingH005,
          child: customTextFormFieldWithValidator(
            context,
            controller: emailController,
            validator: (value) => AppValidators.email(value),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Auth.Email'.tr(),
            prefixWidget: Padding(
              padding: AppPadding.padding20,
              child: const Icon(
                Icons.email_outlined,
                color: AppColor.secondary,
              ),
            ),
          ),
        ),
        SizedBox(height: AppSize.height * 0.025),
        Padding(
          padding: AppPaddingCopy.paddingH005,
          child: customTextFormFieldWithValidator(
            context,
            controller: passwordController,
            validator: (value) => AppValidators.password(value),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Auth.Password'.tr(),
            isObscureText: true,
            prefixWidget: Padding(
              padding: AppPadding.padding20,
              child: const Icon(
                Icons.lock_outline,
                color: AppColor.secondary,
              ),
            ),
          ),
        ),
        SizedBox(height: AppSize.height * 0.05),
        Padding(
          padding: AppPaddingCopy.paddingH005,
          child: CustomWideButton(
            title: 'Auth.Login'.tr(),
            onTap: login,
          ),
        ),
      ],
    );
  }
}
