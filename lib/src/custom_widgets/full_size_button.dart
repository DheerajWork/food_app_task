import 'package:flutter/material.dart';
import 'package:food_app_task/src/utils/my_colors.dart';
import 'package:food_app_task/src/utils/my_string.dart';
import 'package:food_app_task/src/utils/my_styles.dart';

class FullSizeButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;

  const FullSizeButton({Key? key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [MyColors.gradientOrange, MyColors.gradientRed],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
        ),
        child: Center(child: Text(text!, style: MyStyles.white17Regular)),
      ),
    );
  }
}
