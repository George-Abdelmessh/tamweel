import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/constants/app_image.dart';
import 'package:tamweel/shared/style/app_color.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon:const Icon(
            Icons.arrow_back_ios,
            color: AppColor.secondary,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImage.comingSoon,
              width: AppSize.width * 0.8,
            ),
            SizedBox(
              height: AppSize.height * 0.005,
            ),
            Text(
              '${'ComingSoon'.tr()}...',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
