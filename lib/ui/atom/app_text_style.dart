import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextStyle {
  const AppTextStyle._();

  static TextStyle regular({
    Color color = AppColor.mainText,
    double? fontSize,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'NotoSansCJKjp',
      fontWeight: FontWeight.w400,
      color: color,
      fontSize: fontSize,
      height: height,
    );
  }

  static TextStyle medium({
    Color color = AppColor.mainText,
    double? fontSize,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'NotoSansCJKjp',
      fontWeight: FontWeight.w500,
      color: color,
      fontSize: fontSize,
      height: height,
    );
  }

  static TextStyle bold({
    Color color = AppColor.mainText,
    double? fontSize,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'NotoSansCJKjp',
      fontWeight: FontWeight.w700,
      color: color,
      fontSize: fontSize,
      height: height,
    );
  }
}
