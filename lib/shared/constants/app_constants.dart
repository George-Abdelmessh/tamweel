import 'package:flutter/material.dart';

/// used for put all const name and values

class AppConst{
  
  
  static String firstUse = 'firstUse';
  
}


class AppSize {
  static final size = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  static final width = size.width;
  static final height = size.height;
}