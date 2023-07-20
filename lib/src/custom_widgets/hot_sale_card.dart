import 'package:flutter/material.dart';
import 'package:food_app_task/src/utils/my_colors.dart';
import 'package:food_app_task/src/utils/my_styles.dart';

class HotSaleCard extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;

  const HotSaleCard({Key? key, this.img, this.title, this.subtitle, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 95,
            width: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.darkBg,
                boxShadow: [
                  BoxShadow(
                      color: MyColors.black.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 6,
                      offset: const Offset(0, 0))
                ],
                border: Border.all(color: MyColors.black, width: 1)),
            child: Center(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(img!), fit: BoxFit.fill)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          title!,
          style: MyStyles.white12Light,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          subtitle!,
          style: MyStyles.grey12Light,
        ),
      ],
    );
  }
}
