import 'dart:ui';

import 'package:flutter/material.dart';

class Style {
  Style(Size size) {
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
