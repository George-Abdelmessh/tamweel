import 'package:flutter/material.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_width.dart';
import 'package:tamweel/shared/style/app_color.dart';

class CustomIconWithText extends StatelessWidget {
  const CustomIconWithText({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColor.primary, size: 15.0),
        const CustomSizedBoxWidth(width: 5.0),
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
