import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/auth/widgets/login/login_screen_form.dart';
import 'package:tamweel/layout/auth/widgets/login/login_screen_pre_form.dart';
import 'package:tamweel/layout/home/home_screen.dart';
import 'package:tamweel/providers/auth/app_user_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_floating_back_button.dart';
import 'package:tamweel/shared/navigation/app_navigator.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //form keys and text editing controllers
    final formKey = GlobalKey<FormState>();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final authProvider = ref.watch(authNotifierProvider.notifier);
    Future<void> login() async {
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
            .login(emailController.text, passwordController.text)
            .then((value) {
          Navigator.of(context).pop();
          if (value) {
            AppNavigator.pushAndRemove(context: context, screen: HomeScreen());
          }
        });
      }
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButton: const CustomFloatingBackButton(),
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
                  const LoginScreenPreForm(),
                  LoginForm(
                    emailController: emailController,
                    login: login,
                    passwordController: passwordController,
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
