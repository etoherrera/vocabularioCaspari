import 'package:flutter/material.dart';

// Determine if we should use mobile layout or not, 600 here is
// a common breakpoint for a typical 7-inch tablet.

class SizeConfig {
  static late MediaQueryData? _mediaQueryData;
  static late double? screenWidth;
  static late double? screenHeight;
  static late double? shortestSide;
  static late bool? useMobileLayout;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;

    shortestSide = _mediaQueryData!.size.shortestSide;
    useMobileLayout = (shortestSide! < 600);
  }
}
