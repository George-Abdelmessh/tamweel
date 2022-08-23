import 'package:flutter/material.dart';

import '../style/app_color.dart';
import 'custom_sized_box_width.dart';

class CustomIconWithText extends StatelessWidget {
  const CustomIconWithText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColor.primary, size: 15.0),
        CustomSizedBoxWidth(width: 5.0),
        Expanded(
          child: Text(
            '$text',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
