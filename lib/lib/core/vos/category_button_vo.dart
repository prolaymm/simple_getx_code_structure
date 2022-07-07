import 'package:flutter/material.dart';

class CategoryButtonVo {
  String icon;
  String title;
  VoidCallback onClick;

  CategoryButtonVo(
      {required this.icon, required this.title, required this.onClick});
}
