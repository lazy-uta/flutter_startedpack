import 'package:flutter/material.dart';
import 'package:startedpack/commons/color_data.dart';

class MainThemeData {
  factory MainThemeData() {
    return _mainThemeData;
  }

  MainThemeData._internal();

  static final MainThemeData _mainThemeData = MainThemeData._internal();

  final ThemeData lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: ColorData.green18,
    scaffoldBackgroundColor: ColorData.primaryLight,
    fontFamily: 'SF Pro Display',
  );

  final ThemeData darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: ColorData.primaryDark,
    scaffoldBackgroundColor: ColorData.primaryDark,
    fontFamily: 'SF Pro Display',
  );
}
