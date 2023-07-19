import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:food_app_task/src/utils/my_colors.dart';
import 'package:food_app_task/src/utils/my_styles.dart';

class DetailsCard extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final int? price;
  final VoidCallback? onTap;

  const DetailsCard(
      {Key? key, this.img, this.title, this.subtitle, this.price, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: DottedDecoration(
                color: MyColors.orangeClr,
                strokeWidth: 1.5,
                dash: const <int>[3, 2],
                borderRadius: BorderRadius.circular(8),
                shape: Shape.box),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(img!), fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title!,
                        style: MyStyles.white12Light.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        subtitle!,
                        style: MyStyles.grey12Light.copyWith(fontSize: 10),
                      ),
                      Row(
                        children: [
                          Text(
                            "$price Rs.",
                            style: MyStyles.white17Regular,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .25,
                          ),
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                color: MyColors.white, shape: BoxShape.circle),
                            child: Icon(Icons.favorite_border,
                                size: 15, color: MyColors.gradientRed),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: MyColors.orangeClr,
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(5))),
                            child: Center(
                                child: Container(
                              width: 10,
                              height: 1.5,
                              color: MyColors.white,
                            )),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: MyColors.orangeClr,
                                borderRadius: const BorderRadius.horizontal(
                                    right: Radius.circular(5))),
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: MyColors.white,
                              size: 16,
                            )),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
