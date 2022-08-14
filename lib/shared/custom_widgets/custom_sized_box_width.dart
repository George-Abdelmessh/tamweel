import 'package:flutter/material.dart';

class CustomSizedBoxWidth extends StatelessWidget {
  const CustomSizedBoxWidth({
    Key? key,
    this.width = 20.0,
  }) : super(key: key);
  final width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
