import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app_task/src/screens/intro_screen/intro_screen.dart';
import 'package:food_app_task/src/utils/my_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const IntroScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.splashBg), fit: BoxFit.fill)),
        child: Center(
          child: Image.asset(MyImages.burgerGif),
        ),
      ),
    );
  }
}
