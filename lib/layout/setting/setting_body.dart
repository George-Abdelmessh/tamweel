import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/auth/login_options_screen.dart';
import 'package:tamweel/models/auth/app_user_model.dart';
import 'package:tamweel/providers/auth/app_user_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_row_button.dart';
import 'package:tamweel/shared/navigation/app_navigator.dart';
import 'package:tamweel/shared/network/local/cash_helper.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class SettingBody extends ConsumerWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authNotifierProvider);
    print(authProvider.userState);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 25),
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
                            onTap: () {},
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
                  Padding(
                    padding: AppPadding.paddingV10,
                    child: SizedBox(
                      height: AppSize.height * 0.37,
                      child: Stack(
                        children: [
                          Container(
                            height: AppSize.height * 0.37,
                            decoration: BoxDecoration(
                              borderRadius: AppRadius.radius20,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: AppPaddingCopy.paddingH001,
                              child: Container(
                                height: AppSize.height * 0.34,
                                decoration: BoxDecoration(
                                  // shape: BoxShape.circle,

                                  borderRadius: AppRadius.radius20,
                                  border: Border.all(
                                    width: 2,
                                    color: AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: AppSize.height * 0.0325,
                            child: Padding(
                              padding: AppPadding.paddingH005,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomRowButton(
                                    title: 'خدمتنا',
                                    onTap: () {},
                                    titleSize: 19,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: const Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  const CustomRowButton(
                                    title: 'خريطة الموقع',
                                    onTap: {},
                                    titleSize: 19,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: const Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  const CustomRowButton(
                                    title: 'الشروط والاحكام',
                                    onTap: {},
                                    titleSize: 19,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: const Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  const CustomRowButton(
                                    title: 'سياسة الخصوصية',
                                    onTap: {},
                                    titleSize: 19,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: const Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  const CustomRowButton(
                                    title: 'الدعم',
                                    onTap: {},
                                    titleSize: 19,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left:
                                Directionality.of(context) == TextDirection.ltr
                                    ? AppSize.width * 0.1
                                    : null,
                            right:
                                Directionality.of(context) == TextDirection.ltr
                                    ? null
                                    : AppSize.width * 0.1,
                            child: Container(
                              color: AppColor.white,
                              height: AppSize.height * 0.04,
                              child: const Text(
                                '\tمعلومات\t',
                                style: TextStyle(
                                  color: AppColor.container,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: AppPadding.paddingV10,
                    child: SizedBox(
                      height: AppSize.height * 0.3,
                      child: Stack(
                        children: [
                          Container(
                            height: AppSize.height * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: AppRadius.radius20,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: AppPaddingCopy.paddingH001,
                              child: Container(
                                height: AppSize.height * 0.27,
                                decoration: BoxDecoration(
                                  // shape: BoxShape.circle,

                                  borderRadius: AppRadius.radius20,
                                  border: Border.all(
                                    width: 2,
                                    color: AppColor.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: AppSize.height * 0.0325,
                            child: Padding(
                              padding: AppPadding.paddingH005,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomRowButton(
                                    icon: Icons.location_on_outlined,
                                    title: 'خدمتنا',
                                    onTap: () {},
                                    titleSize: 16,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: const Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  CustomRowButton(
                                    icon: Icons.phone,
                                    title: '15255',
                                    onTap: () {},
                                    titleSize: 16,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: const Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  CustomRowButton(
                                    icon: Icons.mail_outline,
                                    title: 'info@ayadymisr.com',
                                    onTap: () {},
                                    titleSize: 16,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: const Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: AppSize.height * 0.035,
                                  ),
                                  SizedBox(
                                    width: AppSize.width * 0.8,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(
                                          FontAwesomeIcons.twitter,
                                          color: AppColor.secondary,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.linkedin,
                                          color: AppColor.secondary,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.facebook,
                                          color: AppColor.secondary,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.instagram,
                                          color: AppColor.secondary,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left:
                                Directionality.of(context) == TextDirection.ltr
                                    ? AppSize.width * 0.1
                                    : null,
                            right:
                                Directionality.of(context) == TextDirection.ltr
                                    ? null
                                    : AppSize.width * 0.1,
                            child: Container(
                              color: AppColor.white,
                              height: AppSize.height * 0.04,
                              child: const Text(
                                '\tاتصل بنا\t',
                                style: TextStyle(
                                  color: AppColor.container,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: AppPadding.paddingH20,
                    child: Row(
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
    );
  }
}
