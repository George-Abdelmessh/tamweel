import 'package:flutter/material.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_width.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CustomDrawerCard extends StatelessWidget {
  const CustomDrawerCard({
    super.key,
    required this.icon,
    required this.itemTitle,
    required this.onTap,
  }) : super(key: key);
  final icon;
  final String itemTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      borderRadius: AppRadius.radius10,
      child: Container(
        decoration: AppDecoration.decorationGrey,
        padding: AppPadding.padding10,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: AppColor.black,
            ),
            const CustomSizedBoxWidth(),
            Expanded(
              child: Text(
                itemTitle,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: AppColor.black,
                ),
              ),
            ),
            const CustomSizedBoxWidth(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 10,
              color: AppColor.black,
            ),
          ],
        ),
      ),
    );
  }
}
