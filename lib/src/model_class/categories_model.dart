import 'package:flutter/cupertino.dart';

class CategoriesModel {
  final String? img;
  final String? text;
  final VoidCallback? onTap;

  CategoriesModel(this.img, this.text, this.onTap);
}
