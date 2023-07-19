import 'package:flutter/material.dart';

class HotSaleModel {
  final String? img;
  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;

  HotSaleModel(this.img, this.title, this.subtitle, this.onTap);
}
