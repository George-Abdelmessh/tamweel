import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/validators/app_validators.dart';

class SecondStepForm extends ConsumerWidget {
  const SecondStepForm({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(signupFormNotifierProvider.notifier);
    final formKey = GlobalKey<FormState>();
    return SizedBox(
      height: AppSize.height,
      child: Padding(
        padding: AppPaddingCopy.paddingH01,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              customTextFormFieldWithValidator(
                context,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: passwordController,
                hintText: 'Auth.Password'.tr(),
                keyboardType: TextInputType.text,
                contentPadding: AppPaddingCopy.paddingH005,
                isObscureText: true,
                validator: (value) => AppValidators.password(value),
              ),
              SizedBox(height: AppSize.height * 0.01),
              customTextFormFieldWithValidator(
                context,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: confirmPasswordController,
                keyboardType: TextInputType.text,
                hintText: 'Auth.ConfirmPassword'.tr(),
                contentPadding: AppPaddingCopy.paddingH005,
                isObscureText: true,
                validator: (value) =>
                    AppValidators.identical(value, passwordController.text),
              ),
              SizedBox(height: AppSize.height * 0.02),
              Row(
                children: [
                  Expanded(
                    child: CustomWideButton(
                      title: 'Navigation.Back'.tr(),
                      background: AppColor.secondary,
                      onTap: () {
                        authProvider.previousStep();
                      },
                    ),
                  ),
                  SizedBox(
                    width: AppSize.width * 0.05,
                  ),
                  Expanded(
                    child: CustomWideButton(
                      title: 'Navigation.Next'.tr(),
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          authProvider.nextStep();
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
