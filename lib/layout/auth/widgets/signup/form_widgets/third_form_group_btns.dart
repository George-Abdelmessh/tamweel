import 'dart:core';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';
import 'package:tamweel/shared/validators/app_validators.dart';

class ThirdFormGroupButtons extends ConsumerWidget {
  const ThirdFormGroupButtons({
    super.key,
    required this.addressController,
    required this.genderController,
    required this.maritalStatusController,
  });

  final TextEditingController addressController;

  final GroupButtonController genderController;
  final GroupButtonController maritalStatusController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customTextFormFieldWithValidator(
          context,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.text,
          controller: addressController,
          hintText: 'Auth.Address'.tr(),
          prefixWidget: Padding(
            padding: AppPadding.padding20,
            child: const Icon(
              Icons.location_on_outlined,
              color: AppColor.secondary,
            ),
          ),
          validator: (value) => AppValidators.required(value),
        ),
        SizedBox(height: AppSize.height * 0.02),
        Text(
          'Auth.Gender'.tr(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppSize.width * 0.04,
          ),
        ),
        SizedBox(height: AppSize.height * 0.01),
        GroupButton(
          controller: genderController,
          onSelected: (object, index, isSelected) {
            object == 'Auth.Male'.tr()
                ? ref.read(genderProvider.notifier).state = 'Auth.Male'.tr()
                : ref.read(genderProvider.notifier).state = 'Auth.Female'.tr();
            return null;
          },
          buttons: [
            'Auth.Male'.tr(),
            'Auth.Female'.tr(),
          ],
          buttonBuilder: (selected, value, context) {
            return Container(
              width: AppSize.width * 0.2,
              height: AppSize.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: AppRadius.radius20,
                color: selected ? AppColor.secondary : AppColor.grey,
              ),
              child: Center(
                child: FittedBox(
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      color: selected ? AppColor.white : AppColor.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(height: AppSize.height * 0.02),
        Text(
          'Auth.MaritalStatus'.tr(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppSize.width * 0.04,
          ),
        ),
        SizedBox(height: AppSize.height * 0.01),
        GroupButton(
          controller: maritalStatusController,
          onSelected: (object, index, isSelected) {
            ref.read(maritalStatusProvider.notifier).state =
                MaritalStatus.values[index];
            return null;
          },
          buttons: [
            'Auth.Married'.tr(),
            'Auth.Divorced'.tr(),
            'Auth.Widowed'.tr(),
            'Auth.Single'.tr(),
          ],
          buttonBuilder: (selected, value, context) {
            return Container(
              width: AppSize.width * 0.175,
              height: AppSize.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: AppRadius.radius20,
                color: selected ? AppColor.secondary : AppColor.grey,
              ),
              child: Center(
                child: FittedBox(
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      color: selected ? AppColor.white : AppColor.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(height: AppSize.height * 0.02),
      ],
    );
  }
}
