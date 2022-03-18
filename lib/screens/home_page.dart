import 'package:bmi_calculator/components/custom_toggle_button.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/utils/colors.dart';
import 'package:bmi_calculator/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = false;
  String weight = "";
  String height = "";
  String errorMessage = "";
  double inMeter = 0;
  double bmiValue = 0;

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  themeCallBack(value) {
    final changeTheme = Provider.of<ThemeProvider>(context, listen: false);
    changeTheme.toggleTheme(value);
    isDark = value!;
  }

  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyTexts.bmiCalculator),
        actions: [
          Center(
              child: Text(
            isDark ? MyTexts.dark : MyTexts.light,
            style: Theme.of(context).textTheme.bodyText2,
          )),
          const SizedBox(
            width: 10,
          ),
          MyToggleButton(
            callBackFunction: themeCallBack,
          ),
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

          // text field for weight
          SizedBox(
            height: 55,
            child: TextField(
              style: Theme.of(context).textTheme.bodyText1,
              cursorColor: isDark ? Colors.white : MyColors.primaryColor,
              keyboardType: TextInputType.number,
              controller: weightController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: MyTexts.yourWeight,
                labelStyle: Theme.of(context).textTheme.bodyText1,
                hintText: MyTexts.kilogram,
                hintStyle: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // text field for height
          SizedBox(
            height: 55,
            child: TextField(
              style: Theme.of(context).textTheme.bodyText1,
              cursorColor: isDark ? Colors.white : MyColors.primaryColor,
              keyboardType: TextInputType.number,
              controller: heightController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: MyTexts.height,
                labelStyle: Theme.of(context).textTheme.bodyText1,
                hintText: MyTexts.feet,
                hintStyle: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // submit button
          SizedBox(
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
                calculation();
                clearText();
              },
              child: Text(
                MyTexts.getYourBMI,
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ),
          const SizedBox(height: 15),

          // error text
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }

  void calculation() {
    weight = weightController.text.trim();
    height = heightController.text.trim();

    if (weight == "" || height == "") {
      setState(() {
        errorMessage = MyTexts.condition;
      });
    } else {
      setState(() {
        errorMessage = "";
      });
      inMeter = (double.parse(height)) / 3.28;
      bmiValue = (double.parse(weight)) / (inMeter * inMeter);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => Result(bmiValue: bmiValue,),
        ),
      );
    }
  }

  void clearText(){
    weightController.clear();
    heightController.clear();
  }
}
