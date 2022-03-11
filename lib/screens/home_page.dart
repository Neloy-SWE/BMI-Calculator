import 'package:bmi_calculator/components/custom_toggle_button.dart';
import 'package:bmi_calculator/utils/colors.dart';
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
        actions: [
          Center(
              child: Text(
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? MyTexts.dark
                : MyTexts.light,
            style: Theme.of(context).textTheme.bodyText2,
          )),
          const SizedBox(
            width: 10,
          ),
          const MyToggleButton(),
        ],
      ),
      body: ListView(
        padding:
            const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 80),
        children: [
          const Icon(
            Icons.speed_outlined,
            size: 30,
          ),

          const SizedBox(height: 100),

          SizedBox(
            height: 45,
            child: TextField(
              style: Theme.of(context).textTheme.bodyText1,
              cursorColor: MyColors.primaryColor,
              decoration: InputDecoration(
                hintText: "Hello"
              ),
            ),
          ),
        ],
      ),
    );
  }
}
