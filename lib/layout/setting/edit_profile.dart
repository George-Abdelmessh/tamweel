import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/auth/widgets/signup/form_widgets/custom_country_selector.dart';
import 'package:tamweel/layout/setting/custom_edit_country_selector.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/providers/hud/hud_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/style/app_radius.dart';
import 'package:tamweel/shared/validators/app_validators.dart';
import 'package:vibration/vibration.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen>
    with TickerProviderStateMixin {
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
    _controllerCity.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((value) async =>
        ref.read(signupFormNotifierProvider.notifier).loadData(context));
    initVibrations();
  }

  Future<void> initVibrations() async {
    final canVibrate = await Vibration.hasVibrator();
    // ref.read(canvibrateProvider.notifier).state = canVibrate ?? false;
    final hasController = await Vibration.hasCustomVibrationsSupport();
    // ref.read(hasVibrationController.notifier).state = hasController ?? false;
  }

  Future<void> repeatOnceGov() async {
    await _controllerGov.forward();
    await _controllerGov.reverse();
  }

  Future<void> repeatOnceCity() async {
    await _controllerCity.forward();
    await _controllerCity.reverse();
  }

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final nationalIdController = TextEditingController();

  final phoneController = TextEditingController();

  final addressController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  final GroupButtonController genderController = GroupButtonController();

  final GroupButtonController maritalStatusController = GroupButtonController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'EditProfile.UserInfo'.tr(),
            style: const TextStyle(
              color: AppColor.secondary,
            ),
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.secondary,
            ),
          ),
        ),
        body: Form(
          key: _globalKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: AppPadding.paddingH005,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(height: AppSize.height * 0.025),
                      customTextFormFieldWithValidator(
                        context,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        controller: addressController,
                        hintText: 'Auth.Address'.tr(),
                        contentPadding: AppPaddingCopy.paddingH005,
                        validator: (value) => AppValidators.required(value),
                      ),
                      SizedBox(height: AppSize.height * 0.025),
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
                      SizedBox(height: AppSize.height * 0.025),
                      customTextFormFieldWithValidator(
                        context,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: confirmPasswordController,
                        keyboardType: TextInputType.text,
                        hintText: 'Auth.ConfirmPassword'.tr(),
                        contentPadding: AppPaddingCopy.paddingH005,
                        isObscureText: true,
                        validator: (value) => AppValidators.identical(
                            value, passwordController.text),
                      ),
                      SizedBox(height: AppSize.height * 0.025),
                      Text(
                        'Auth.Gender'.tr(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.width * 0.05,
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
                              color:
                                  selected ? AppColor.secondary : AppColor.grey,
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  value.toString(),
                                  style: TextStyle(
                                    color: selected
                                        ? AppColor.white
                                        : AppColor.black,
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
                          fontSize: AppSize.width * 0.05,
                        ),
                      ),
                      SizedBox(height: AppSize.height * 0.01),
                      GroupButton(
                        controller: maritalStatusController,
                        onSelected: (object, index, isSelected) {
                          // ref.read(maritalStatusProvider.notifier).state =
                          // MaritalStatus.values[index];
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
                              color:
                                  selected ? AppColor.secondary : AppColor.grey,
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  value.toString(),
                                  style: TextStyle(
                                    color: selected
                                        ? AppColor.white
                                        : AppColor.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: AppSize.height * 0.02),
                      if (!ref.read(isLoadingProvider))
                        CustomEditCountrySelector(
                          offsetAnimationCity: _offsetAnimationCity,
                          offsetAnimationGov: _offsetAnimationGov,
                        ),
                    ],
                  ),
                  SizedBox(
                    height: AppSize.height * 0.025,
                  ),
                  CustomWideButton(
                    title: 'EditProfile.Edit'.tr(),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: AppSize.height * 0.025,
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
