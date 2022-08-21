import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

/// CONSTANTS APP PADDING
class AppPadding {
  /// 10 10 10 10
  static EdgeInsets padding10 = EdgeInsets.all(AppSize.width * 0.01);

  /// 15 15 15 15
  static EdgeInsets padding15 = EdgeInsets.all(AppSize.width * 0.014);

  /// 20 20 20 20
  static EdgeInsets padding20 = EdgeInsets.all(AppSize.width * 0.018);

  /// 0 10 0 10
  static EdgeInsets paddingH10 =
      EdgeInsets.symmetric(horizontal: AppSize.width * 0.01);

  /// 0 15 0 15
  static EdgeInsets paddingH15 =
      EdgeInsets.symmetric(horizontal: AppSize.width * 0.014);

  /// 0 20 0 20
  static EdgeInsets paddingH20 =
      EdgeInsets.symmetric(horizontal: AppSize.width * 0.018);

  static EdgeInsets paddingH005 =
      EdgeInsets.symmetric(horizontal: AppSize.width * 0.05);

  /// 10 0 10 0
  static EdgeInsets paddingV10 =
      EdgeInsets.symmetric(vertical: AppSize.width * 0.01);

  /// 0 15 0 15
  static EdgeInsets paddingV15 =
      EdgeInsets.symmetric(vertical: AppSize.width * 0.014);

  /// 20 0 20 0
  static EdgeInsets paddingV20 =
      EdgeInsets.symmetric(vertical: AppSize.width * 0.018);

  /// PADDING FOR TEXT FORM FIELD 20 5 20 5
  static EdgeInsets paddingTextFormField = EdgeInsets.symmetric(
    vertical: AppSize.width * 0.018,
    horizontal: AppSize.width * 0.006,
  );
}
