import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/validators/app_validators.dart';

class FirstStepForm extends ConsumerWidget {
  const FirstStepForm({
    super.key,
    required this.emailController,
    required this.nameController,
    required this.nationalIdController,
    required this.phoneController,
  });

  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController nationalIdController;

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
                keyboardType: TextInputType.name,
                controller: nameController,
                hintText: 'Auth.Name'.tr(),
                contentPadding: AppPaddingCopy.paddingH005,
                validator: (value) => AppValidators.required(value),
              ),
              SizedBox(height: AppSize.height * 0.025),
              customTextFormFieldWithValidator(
                context,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Auth.Email'.tr(),
                contentPadding: AppPaddingCopy.paddingH005,
                validator: (value) => AppValidators.email(value),
              ),
              SizedBox(height: AppSize.height * 0.025),
              customTextFormFieldWithValidator(
                context,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.number,
                controller: nationalIdController,
                hintText: 'Auth.NationalId'.tr(),
                contentPadding: AppPaddingCopy.paddingH005,
                validator: (value) =>
                    AppValidators.numbersExactLength(value, 14),
              ),
              SizedBox(height: AppSize.height * 0.025),
              customTextFormFieldWithValidator(
                context,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.phone,
                controller: phoneController,
                hintText: 'Auth.Phone'.tr(),
                contentPadding: AppPaddingCopy.paddingH005,
                validator: (value) => AppValidators.phoneNumber(value),
              ),
              SizedBox(height: AppSize.height * 0.04),
              CustomWideButton(
                title: 'Navigation.Next'.tr(),
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    authProvider.nextStep();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
