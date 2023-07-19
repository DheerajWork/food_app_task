import 'package:flutter/material.dart';
import 'package:food_app_task/src/utils/my_colors.dart';
import 'package:food_app_task/src/utils/my_styles.dart';

class CategoriesCard extends StatelessWidget {
  final String? img;
  final String? text;
  final VoidCallback? onTap;

  const CategoriesCard({Key? key, this.img, this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              gradient: const LinearGradient(
                  colors: [Color(0xff605c3d), Color(0xff3d3e40)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          child: Center(
              child: Image.asset(img!, color: MyColors.white, height: 45)),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          text!,
          style: MyStyles.grey14Light,
        )
      ],
    );
  }
}
