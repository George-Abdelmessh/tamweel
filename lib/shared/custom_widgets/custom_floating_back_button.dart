import 'package:flutter/material.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class CustomFloatingBackButton extends StatelessWidget {
  const CustomFloatingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.paddingV20,
      child: FloatingActionButton(
        backgroundColor: AppColor.transparent,
        elevation: 0,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: AppColor.secondary,
        ),
      ),
    );
  }
}
