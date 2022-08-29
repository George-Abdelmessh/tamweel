// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/auth/login_options_screen.dart';
import 'package:tamweel/layout/setting/edit_profile.dart';
import 'package:tamweel/layout/setting/widget/first_container_widget.dart';
import 'package:tamweel/layout/setting/widget/second_container_widget.dart';
import 'package:tamweel/models/auth/app_user_model.dart';
import 'package:tamweel/providers/auth/app_user_provider.dart';
import 'package:tamweel/providers/edit_profile/edit_country_selector_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/Hud/custom_spin_hud.dart';
import 'package:tamweel/shared/navigation/app_navigator.dart';
import 'package:tamweel/shared/network/local/cash_helper.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class SettingBody extends ConsumerWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authNotifierProvider);
    return SafeArea(
      child: Scaffold(
        body: CustomSpinHudWidget(
          child: SingleChildScrollView(
            physics: AppHelper.scroll,
            child: SizedBox(
              height: AppSize.height,
              child: Padding(
                padding: AppPadding.padding20,
                child: Column(
                  children: [
                    SizedBox(
                      height: AppSize.height * 0.03,
                    ),
                    Padding(
                      padding: AppPadding.paddingH005,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (authProvider.userState == AuthState.loggedIn)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Kariim Reda',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 25,
                                  ),
                                ),
                                Divider(height: 5),
                                Text(
                                  'redakariim3@gmail.com',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Divider(height: 5),
                                Text(
                                  '01027979893',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          // const Spacer(),
                          if (authProvider.userState == AuthState.loggedIn)
                            SizedBox(
                              width: AppSize.width * 0.05,
                            ),
                          Expanded(
                            child: Image.asset(
                              'assets/logos/app_logo_icon_text.png',
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (authProvider.userState == AuthState.loggedIn)
                          Expanded(
                            child: InkWell(
                              onTap: () async {
                                await ref
                                    .read(editProfileNotifierProvider.notifier)
                                    .loadData(context);
                                AppNavigator.push(
                                  context: context,
                                  screen: const EditProfileScreen(),
                                );
                              },
                              // color: AppColor.transparent,
                              // elevation: 0.0,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: AppRadius.radius10,
                              // ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: AppColor.primary,
                                  ),
                                  // SizedBox(
                                  //   width: AppSize.width * 0.01,
                                  // ),
                                  Text(
                                    'تعديل البيانات',
                                    style: TextStyle(
                                      color: AppColor.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                    const FirstContainer(),
                    const SecondContainer(),
                    Padding(
                      padding: AppPadding.paddingH20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                ref.read(authNotifierProvider.notifier).guest();
                                CacheHelper.removeData(key: 'email');
                                CacheHelper.removeData(key: 'password');
                                AppNavigator.pushAndRemove(
                                  context: context,
                                  screen: const LoginOptionsScreen(),
                                );
                              },
                              color: AppColor.secondary,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: AppRadius.radius10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.login_outlined,
                                    color: AppColor.white,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.01,
                                  ),
                                  Text(
                                    authProvider.userState == AuthState.loggedIn
                                        ? 'تسجيل الخروج'
                                        : 'تسجيل الدخول',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
