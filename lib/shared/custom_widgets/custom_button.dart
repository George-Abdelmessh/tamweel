import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../style/app_padding.dart';
import '../style/app_radius.dart';


class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.height = 50.0,
    required this.title,
    required this.onTap,
    this.textColor = AppColor.white,
    this.background = AppColor.primary,
    this.borderColor = AppColor.primary,
  }) : super(key: key);
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
      onPressed: () => onTap(),
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
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
