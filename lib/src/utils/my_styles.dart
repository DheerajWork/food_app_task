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
  static TextStyle black12Light = TextStyle(
    color: MyColors.black,
    fontSize: 12,
    fontWeight: MyFontWeight.light,
  );
  static TextStyle grey12Light = TextStyle(
    color: MyColors.grey,
    fontSize: 12,
    fontWeight: MyFontWeight.light,
  );
  static TextStyle grey14Light = TextStyle(
    color: MyColors.grey,
    fontSize: 14,
    fontWeight: MyFontWeight.light,
  );
  static TextStyle grey17Regular = TextStyle(
    color: MyColors.grey,
    fontSize: 17,
    fontWeight: MyFontWeight.regular,
  );
  static TextStyle white17Regular = TextStyle(
    color: MyColors.white,
    fontSize: 17,
    fontWeight: MyFontWeight.regular,
  );
  static TextStyle black20Regular = TextStyle(
    color: MyColors.black,
    fontSize: 20,
    fontWeight: MyFontWeight.regular,
  );
  static TextStyle white20Normal = TextStyle(
    color: MyColors.white,
    fontSize: 22,
    fontWeight: MyFontWeight.normal,
  );
  static TextStyle white12Light = TextStyle(
    color: MyColors.white,
    fontSize: 12,
    fontWeight: MyFontWeight.light,
  );
  static TextStyle orange22Normal = TextStyle(
    color: MyColors.orangeClr,
    fontSize: 22,
    fontWeight: MyFontWeight.normal,
  );
}
