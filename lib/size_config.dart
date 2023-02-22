import 'dart:core';

import 'package:flutter/material.dart';

class SizeConfg {
  static MediaQueryData? _mediaQuerydata;
  static double? screenWidth;
  static double? screenHight;
  static double? blockSizeHorizontal;
  static double? blockSizeVirtical;

  void init(BuildContext context) {
    _mediaQuerydata = MediaQuery.of(context);
    screenWidth = _mediaQuerydata!.size.width;
    screenHight = _mediaQuerydata!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVirtical = screenHight! / 100;
  }
}
