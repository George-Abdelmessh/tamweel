import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_radius.dart';

class AppDecoration {
  /// DECORATION CONTAINER GREY
  static BoxDecoration decorationGrey = BoxDecoration(
    borderRadius: AppRadius.radius20,
    color: AppColor.grey,
  );

  /// DECORATION CONTAINER WHITE
  static BoxDecoration decorationWhite = BoxDecoration(
    borderRadius: AppRadius.radius20,
    color: AppColor.white,
  );

  /// DECORATION CONTAINER OVERLAY
  static BoxDecoration decorationOverlay = BoxDecoration(
    borderRadius: AppRadius.radius20,
    color: AppColor.overlay,
  );

  /// DECORATION BORDER PRIMARY
  static BoxDecoration decorationBorderPrimary = BoxDecoration(
    border: Border.all(width: 1, color: AppColor.primary),
    borderRadius: AppRadius.radius20,
  );
}
