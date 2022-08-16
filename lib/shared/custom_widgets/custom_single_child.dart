import 'package:flutter/cupertino.dart';
import 'package:tamweel/shared/style/app_helper.dart';

class CustomSingleChild extends StatelessWidget {
  const CustomSingleChild({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: child,
      physics: AppHelper.neverScroll,
    );
  }
}
