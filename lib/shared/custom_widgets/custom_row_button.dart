import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.titleSize,
    this.icon,
    this.titleColor = Colors.black,
  });
  final String title;
  final onTap;
  final IconData? icon;
  final Color titleColor;
  final double titleSize;

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
                    fontSize: titleSize,
                    color: titleColor,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
