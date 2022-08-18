import 'package:flutter/material.dart';

class CustomSizedBoxWidth extends StatelessWidget {
  const CustomSizedBoxWidth({
    super.key,
    this.width = 20.0,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
