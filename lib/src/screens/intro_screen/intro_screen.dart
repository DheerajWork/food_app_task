import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_app_task/src/utils/my_colors.dart';
import 'package:food_app_task/src/utils/my_images.dart';
import 'package:food_app_task/src/utils/my_string.dart';
import 'package:food_app_task/src/utils/my_styles.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  slideText() {
    Column(
      children: [
        Text(MyStrings.liveYour, style: MyStyles.orange22Normal),
        Text(MyStrings.dummy, style: MyStyles.white12Light),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 320,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    MyColors.transparent,
                    MyColors.black.withOpacity(0.9)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: AnotherCarousel(
                    images: [
                      AssetImage(MyImages.onBoarding1),
                      AssetImage(MyImages.onBoarding2),
                      AssetImage(MyImages.onBoarding3),
                    ],
                    dotBgColor: MyColors.transparent,
                    dotSize: 0,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 320,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [MyColors.transparent,MyColors.darkBg],
                      stops: const [0.1,1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    )
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: MyColors.darkBg,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      MyImages.logoGif,
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .1,
                    ),
                    Expanded(
                      child: AnotherCarousel(
                        images: [
                          Column(
                            children: [
                              Text(MyStrings.liveYour, style: MyStyles.orange22Normal),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(MyStrings.dummy,
                                  style: MyStyles.white12Light.copyWith(height: 1.8),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          Column(
                            children: [
                              Text(MyStrings.liveYour, style: MyStyles.orange22Normal),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(MyStrings.dummy,
                                  style: MyStyles.white12Light.copyWith(height: 1.8),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                          Column(
                            children: [
                              Text(MyStrings.liveYour, style: MyStyles.orange22Normal),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(MyStrings.dummy,
                                  style: MyStyles.white12Light.copyWith(height: 1.8),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ],
                        dotBgColor: MyColors.transparent,
                        dotSize: 0,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [MyColors.gradientOrange,MyColors.gradientRed],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        ),
                      ),
                      child: Center(child: Text(MyStrings.continueText,style: MyStyles.white17Light)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
