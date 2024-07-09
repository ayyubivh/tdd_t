import 'package:flutter/material.dart';

class SizeConfig {
  // static keyword included so you can call this method without instantiating an object of it like so :
  // SizeConfig.height(context, 2)

  static BuildContext? appContext;
  static MediaQueryData? _mediaQueryData;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    appContext = context;
  }

  static double height(double height) {
    // 812.0 is the iphone Xs height since out design is based on
    // iphone x/xs/11 pro
    double screenHeight = _mediaQueryData!.size.height / 812.0;
    return height * screenHeight;
  }

  static double width(double width) {
    // 375.0 is the iphone Xs height since out design is based on
    // iphone x/xs/11 pro
    double screenWidth = _mediaQueryData!.size.width / 375;
    return width * screenWidth;
  }

  static double textSize(double textSize) {
    double screenWidth = _mediaQueryData!.size.width / 400;
    return textSize * screenWidth;
  }
}
