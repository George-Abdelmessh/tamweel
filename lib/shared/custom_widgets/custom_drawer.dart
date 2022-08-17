import 'package:flutter/material.dart';

import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.children,
  });

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
