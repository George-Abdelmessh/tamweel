import 'package:flutter/material.dart';

import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 50.0,
    required this.title,
    required this.onTap,
    this.textColor = AppColor.white,
    this.background = AppColor.primary,
    this.borderColor = AppColor.primary,
  });
  final String title;
  final double height;
  final Function onTap;
  final Color textColor;
  final Color background;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      onPressed: () {
        // ignore: avoid_dynamic_calls
        onTap();
      },
      minWidth: double.infinity,
      padding: AppPadding.paddingV10,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.radius20,
        side: BorderSide(color: borderColor),
      ),
      elevation: 0.0,
      focusElevation: 0.0,
      hoverElevation: 0.0,
      highlightElevation: 0.0,
      color: background,
      focusColor: background,
      hoverColor: background,
      splashColor: background,
      highlightColor: background,
      textColor: textColor,
      child: Text(
        title,
        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
