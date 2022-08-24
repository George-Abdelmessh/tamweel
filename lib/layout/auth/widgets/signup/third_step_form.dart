import 'dart:core';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/auth/login_options_screen.dart';
import 'package:tamweel/layout/auth/widgets/signup/form_widgets/custom_country_selector.dart';
import 'package:tamweel/layout/auth/widgets/signup/form_widgets/third_form_group_btns.dart';
import 'package:tamweel/layout/auth/widgets/signup/form_widgets/third_form_signup_btn.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/navigation/app_navigator.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:vibration/vibration.dart';

class ThirdStepForm extends ConsumerStatefulWidget {
  const ThirdStepForm({
    super.key,
    required this.addressController,
    required this.nameController,
    required this.emailController,
    required this.nationalIdController,
    required this.phoneController,
    required this.passwordController,
    required this.genderController,
    required this.maritalStatusController,
  });
  final TextEditingController addressController;
  //take all the strings from previous steps to signup form provider
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController nationalIdController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final GroupButtonController genderController;
  final GroupButtonController maritalStatusController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ThirdStepFormState();
}

class _ThirdStepFormState extends ConsumerState<ThirdStepForm>
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

      await authProvider
          .signUp(
        email: widget.emailController.text,
        password: widget.passwordController.text,
        name: widget.nameController.text,
        phone: widget.phoneController.text,
        address: addressController.text,
        nationalId: widget.nationalIdController.text,
        isMale: ref.read(genderProvider.notifier).state == 'Auth.Male'.tr(),
        userMaritalStatus: ref.read(maritalStatusProvider.notifier).state,
        governorate: ref.read(governorateProvider.notifier).state,
        city: ref.read(cityProvider.notifier).state,
      )
          .then((value) {
        if (value.item1) {
          AppNavigator.pushAndRemove(
            context: context,
            screen: const LoginOptionsScreen(),
          );
        }
      });
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
              ThirdFormGroupButtons(
                addressController: addressController,
                genderController: widget.genderController,
                maritalStatusController: widget.maritalStatusController,
              ),
              CustomCountrySelector(
                offsetAnimationCity: _offsetAnimationCity,
                offsetAnimationGov: _offsetAnimationGov,
              ),
              ThirdFormSignupButtons(
                formKey: formKey,
                repeatOnceCity: repeatOnceCity,
                repeatOnceGov: repeatOnceGov,
                signup: signup,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
