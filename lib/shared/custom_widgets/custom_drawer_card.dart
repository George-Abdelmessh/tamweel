import 'package:flutter/material.dart';

import '../style/app_color.dart';
import '../style/app_decoration.dart';
import '../style/app_padding.dart';
import '../style/app_radius.dart';
import 'custom_sized_box_width.dart';

class CustomDrawerCard extends StatelessWidget {
  const CustomDrawerCard({
    Key? key,
    required this.icon,
    required this.itemTitle,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
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
            CustomSizedBoxWidth(),
            Expanded(
              child: Text(
                itemTitle,
                style: TextStyle(
                  fontSize: 20.0,
                  color: AppColor.black,
                ),
              ),
            ),
            CustomSizedBoxWidth(),
            Icon(
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