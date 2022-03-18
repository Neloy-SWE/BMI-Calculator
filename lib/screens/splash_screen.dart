import 'dart:async';

import 'package:bmi_calculator/screens/home_page.dart';
import 'package:bmi_calculator/utils/colors.dart';
import 'package:bmi_calculator/utils/texts.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (builder) => const HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyTexts.welcome),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.speed_outlined),
            const SizedBox(height: 50),
            Column(
              children: [
                Text(
                  MyTexts.bmiCalculator,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  MyTexts.bmiTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            const SizedBox(height: 100),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : MyColors.primaryColor,
              ),
              strokeWidth: 5,
            ),
          ],
        ),
      ),
    );
  }
}
