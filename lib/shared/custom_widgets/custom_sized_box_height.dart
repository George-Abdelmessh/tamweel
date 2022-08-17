import 'package:flutter/material.dart';

class CustomSizedBoxHeight extends StatelessWidget {
  const CustomSizedBoxHeight({
    super.key,
    this.height = 20.0,
  });
  final height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
