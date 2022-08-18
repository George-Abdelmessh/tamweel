import 'package:flutter/cupertino.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/constants/app_image.dart';
import 'package:tamweel/shared/style/app_padding_copy.dart';

class LoginOptionsImages extends StatelessWidget {
  const LoginOptionsImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height,
      width: AppSize.width,
      child: Column(
        children: [
          SizedBox(height: AppSize.height * 0.125),
          Image.asset(AppImage.appLogoIconText),
          SizedBox(height: AppSize.height * 0.065),
          Padding(
            padding: AppPaddingCopy.paddingH005,
            child: Image.asset(
              AppImage.loginOptionsImage,
              fit: BoxFit.fitHeight,
              width: double.infinity,
              height: AppSize.height * 0.4,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
