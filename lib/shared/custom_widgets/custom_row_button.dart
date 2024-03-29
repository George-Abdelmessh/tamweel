import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({
    super.key,
    required this.title,
    required this.onTap,
    this.titleSize,
    this.icon,
    this.titleColor = Colors.black,
  });
  final String title;
  // ignore: prefer_typing_uninitialized_variables, type_annotate_public_apis
  final onTap;
  final IconData? icon;
  final Color titleColor;
  final double? titleSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.transparent,
      child: InkWell(
        splashColor: AppColor.primary.withOpacity(0.5),
        onTap: () => onTap,
        child: SizedBox(
          width: AppSize.width * 0.8,
          child: Row(
            children: [
              Icon(icon, color: AppColor.secondary),
              Text(
                title,
                style: TextStyle(
                  fontSize: AppSize.height * 0.025,
                  color: titleColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
