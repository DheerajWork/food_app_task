import 'package:flutter/material.dart';
import 'package:food_app_task/src/utils/my_colors.dart';


class MyFontWeight {
  static FontWeight light = FontWeight.w400;
  static FontWeight regular = FontWeight.w500;
  static FontWeight normal = FontWeight.w600;
  static FontWeight semiBold = FontWeight.bold;
  static FontWeight bold = FontWeight.w800;
  static FontWeight extraBold = FontWeight.w900;
}


class MyStyles {
  static TextStyle black12Light = TextStyle(color: MyColors.black, fontSize: 12, fontWeight: MyFontWeight.light,);
  static TextStyle white17Light = TextStyle(color: MyColors.white, fontSize: 17, fontWeight: MyFontWeight.regular,);
  static TextStyle white12Light = TextStyle(color: MyColors.white, fontSize: 12, fontWeight: MyFontWeight.regular,);
  static TextStyle orange22Normal = TextStyle(color: MyColors.orangeClr, fontSize: 22, fontWeight: MyFontWeight.normal,);
}