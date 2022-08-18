import 'package:flutter/cupertino.dart';
import 'package:tamweel/shared/style/app_helper.dart';

class CustomSingleChild extends StatelessWidget {
  const CustomSingleChild({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AppHelper.neverScroll,
      child: child,
    );
  }
}
