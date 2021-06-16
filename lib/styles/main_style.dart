import 'dart:ui';

import 'package:flutter/material.dart';

class MainStyle {
  MainStyle(Size size) {
    _heightScreen = size.height;
    _widthScreen = size.width;
  }

  double _heightScreen;
  double _widthScreen;

  double heightScreen() {
    return _heightScreen;
  }

  double widthScreen() {
    return _widthScreen;
  }
}
