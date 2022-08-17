import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/constants/app_image.dart';
import 'package:tamweel/shared/style/app_color.dart';

class SignUpWelcome extends StatelessWidget {
  const SignUpWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSize.height * 0.018,
        ),
        Text(
          'Auth.Login'.tr(),
          style: TextStyle(
            fontSize: AppSize.width * 0.075,
            fontWeight: FontWeight.bold,
            color: AppColor.primary,
          ),
        ),
        SizedBox(
          height: AppSize.height * 0.02,
        ),
        Image.asset(
          AppImage.signupWelcomeImage,
          fit: BoxFit.cover,
          height: AppSize.height * 0.25,
        ),
      ],
    );
  }
}
