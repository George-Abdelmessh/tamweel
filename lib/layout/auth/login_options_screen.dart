import 'package:flutter/material.dart';
import 'package:tamweel/layout/auth/widgets/login_options/login_options_bottom_wave.dart';
import 'package:tamweel/layout/auth/widgets/login_options/login_options_buttons.dart';
import 'package:tamweel/layout/auth/widgets/login_options/login_options_images.dart';
import 'package:tamweel/shared/custom_widgets/custom_hud.dart';

import 'package:tamweel/shared/style/app_color.dart';

class LoginOptionsScreen extends StatelessWidget {
  const LoginOptionsScreen({super.key});
  // static const routeName = '/login_options';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: CustomHudWidget(
          child: Stack(
            children: const [
              //The Logo and the image in the background
              LoginOptionsImages(),
              //The Wave effect Displayed at the bottom of the screen
              LoginOptionsBottomWave(),
              //The Buttons displayed at the bottom part of the screen
              LoginOptionsButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
