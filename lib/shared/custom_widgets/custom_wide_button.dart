import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_radius.dart';

import '../style/app_color.dart';

class CustomWideButton extends StatelessWidget {
  CustomWideButton({
    Key? key,
    this.height,
    required this.title,
    required this.onTap,
    this.textColor = AppColor.white,
    this.background = AppColor.primary,
  }) : super(key: key);
  final String title;
  final double? height;
  final Function onTap;
  final Color textColor;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? AppSize.height * 0.06,
      child: ElevatedButton(
        onPressed: () => onTap(),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: textColor),
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
          primary: background,
          elevation: 0.0,
          enableFeedback: true,
          minimumSize: AppSize.size,
          // fixedSize: Size.infinite,
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.radius20,
          ),
        ),
      ),
    );
  }
}
