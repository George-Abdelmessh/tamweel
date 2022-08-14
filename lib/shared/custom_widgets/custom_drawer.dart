import 'package:flutter/material.dart';

import '../style/app_helper.dart';
import '../style/app_padding.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          physics: AppHelper.scroll,
          padding: AppPadding.padding20,
          children: children,
        ),
      ),
    );
  }
}