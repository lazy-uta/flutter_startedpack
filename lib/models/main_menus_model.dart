import 'package:flutter/material.dart';

class MainMenusModel {
  MainMenusModel({
    this.name,
    this.routeName,
    this.color,
    this.icon,
    this.isActive,
  });

  String name;
  String routeName;
  String icon;
  Color color;
  bool isActive;
}
