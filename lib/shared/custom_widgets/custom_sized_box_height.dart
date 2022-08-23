import 'package:flutter/material.dart';

class CustomSizedBoxHeight extends StatelessWidget {
  const CustomSizedBoxHeight({
    Key? key,
    this.height = 20.0,
  }) : super(key: key);
  final height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
