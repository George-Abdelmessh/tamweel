import 'package:flutter/material.dart';

import 'package:tamweel/shared/style/app_color.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    required this.onTap,
    this.titleColor = AppColor.primary,
  }) : super(key: key);
  final String title;
  final onTap;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap,
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: titleColor,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
