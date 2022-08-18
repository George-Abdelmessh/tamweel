import 'dart:core';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/style/app_radius.dart';
import 'package:tamweel/shared/validators/app_validators.dart';
import 'package:vibration/vibration.dart';

final canvibrateProvider = StateProvider((ref) => false);
final hasVibrationController = StateProvider((ref) => false);

final genderProvider = StateProvider.autoDispose((ref) => 'Auth.Male'.tr());
// String? gender;
final maritalStatusProvider =
    StateProvider.autoDispose((ref) => MaritalStatus.married);

final governorateProvider =
    StateProvider.autoDispose((ref) => 'Auth.Governorate'.tr());
final cityProvider = StateProvider.autoDispose((ref) => 'Auth.City'.tr());

class ThirdStepForm extends ConsumerStatefulWidget {
  const ThirdStepForm({
    super.key,
    required this.addressController,
    required this.nameController,
    required this.emailController,
    required this.nationalIdController,
    required this.phoneController,
    required this.passwordController,
  });
  final TextEditingController addressController;
  //take all the strings from previous steps to signup form provider
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController nationalIdController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ThirdStepFormState();
}

class _ThirdStepFormState extends ConsumerState<ThirdStepForm>
    with TickerProviderStateMixin {
  // MaritalStatus? maritalStatus;
  final genderController = GroupButtonController();
  final maritalStatusController = GroupButtonController();

  late final AnimationController _controllerGov = AnimationController(
    duration: const Duration(milliseconds: 250),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimationGov = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.1, 0),
  ).animate(
    CurvedAnimation(
      parent: _controllerGov,
      curve: Curves.elasticIn,
    ),
  );

  late final AnimationController _controllerCity = AnimationController(
    duration: const Duration(milliseconds: 250),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimationCity = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.1, 0),
  ).animate(
    CurvedAnimation(
      parent: _controllerCity,
      curve: Curves.elasticIn,
    ),
  );

  @override
  void dispose() {
    _controllerGov.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    genderController.selectIndex(0);
    maritalStatusController.selectIndex(0);
    initVibrations();
  }

  Future<void> initVibrations() async {
    final canVibrate = await Vibration.hasVibrator();
    ref.read(canvibrateProvider.notifier).state = canVibrate ?? false;
    final hasController = await Vibration.hasCustomVibrationsSupport();
    ref.read(hasVibrationController.notifier).state = hasController ?? false;
  }

  Future<void> repeatOnceGov() async {
    await _controllerGov.forward();
    await _controllerGov.reverse();
  }

  Future<void> repeatOnceCity() async {
    await _controllerCity.forward();
    await _controllerCity.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final addressController = widget.addressController;
    final authProvider = ref.watch(signupFormNotifierProvider.notifier);
    final formKey = GlobalKey<FormState>();

    Future<void> signup() async {
      //show a loading indicator dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(
            color: AppColor.secondary,
          ),
        ),
      );
      //login
      await authProvider
          .signUp(
            email: widget.emailController.text,
            password: widget.passwordController.text,
            name: widget.nameController.text,
            phone: widget.phoneController.text,
            address: addressController.text,
            personalId: widget.nationalIdController.text,
            isMale: ref.read(genderProvider.notifier).state == 'Auth.Male'.tr(),
            userMaritalStatus: ref.read(maritalStatusProvider.notifier).state,
            governorate: ref.read(governorateProvider.notifier).state,
            city: ref.read(cityProvider.notifier).state,
          )
          .then(
            (value) => //hide the loading indicator dialog
                Navigator.of(context).pop(),
          );
    }

    return SizedBox(
      height: AppSize.height,
      child: Padding(
        padding: AppPaddingCopy.paddingH01,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextFormFieldWithValidator(
                context,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                controller: addressController,
                hintText: 'Auth.Address'.tr(),
                contentPadding: AppPaddingCopy.paddingH005,
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
                      ? ref.read(genderProvider.notifier).state =
                          'Auth.Male'.tr()
                      : ref.read(genderProvider.notifier).state =
                          'Auth.Female'.tr();
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
                  object == 'Auth.Married'.tr()
                      ? ref.read(maritalStatusProvider.notifier).state =
                          MaritalStatus.married
                      : object == 'Auth.Divorced'.tr()
                          ? ref.read(maritalStatusProvider.notifier).state =
                              MaritalStatus.divorced
                          : object == 'Auth.Widowed'.tr()
                              ? ref.read(maritalStatusProvider.notifier).state =
                                  MaritalStatus.widowed
                              : ref.read(maritalStatusProvider.notifier).state =
                                  MaritalStatus.single;
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
              SlideTransition(
                position: _offsetAnimationGov,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    value: ref.watch(governorateProvider),
                    items: [
                      DropdownMenuItem(
                        value: 'Auth.Governorate'.tr(),
                        child: Text('Auth.Governorate'.tr()),
                      ),
                      const DropdownMenuItem(
                        value: 'القاهرة',
                        child: Text('القاهرة'),
                      ),
                      DropdownMenuItem(
                        value: 'الجيزة' * 10,
                        child: FittedBox(
                          child: Text(
                            'الجيزة' * 10,
                          ),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      ref.read(governorateProvider.notifier).state =
                          value!.toString();
                    },
                  ),
                ),
              ),
              SizedBox(height: AppSize.height * 0.02),
              SlideTransition(
                position: _offsetAnimationCity,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    value: ref.watch(cityProvider),
                    items: [
                      DropdownMenuItem(
                        value: 'Auth.City'.tr(),
                        child: Text('Auth.City'.tr()),
                      ),
                      const DropdownMenuItem(
                        value: 'القاهرة الجديدة',
                        child: Text('القاهرة الجديدة'),
                      ),
                      DropdownMenuItem(
                        value: 'اكتوبر' * 10,
                        child: FittedBox(
                          child: Text(
                            'اكتوبر' * 10,
                          ),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      ref.read(cityProvider.notifier).state = value!.toString();
                    },
                  ),
                ),
              ),
              SizedBox(height: AppSize.height * 0.04),
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
                          signup();
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
