import 'package:bmi_calculator/utils/texts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyTexts.bmiCalculator),
      ),

      body: ListView(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 80),
        children: [
          const Icon(Icons.speed_outlined, size: 30,),


        ],
      ),
    );
  }
}
