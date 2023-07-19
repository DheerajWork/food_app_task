import 'package:flutter/material.dart';

class DetailModel {
  final String? img;
  final String? title;
  final String? subtitle;
  final int? price;
  final bool? vegOnly;
  final bool? eggOnly;
  final VoidCallback? onTap;

  DetailModel(this.img, this.title, this.subtitle, this.price, this.onTap,
      this.vegOnly, this.eggOnly);
}
