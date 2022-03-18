import 'package:flutter/material.dart';

import '../utils/texts.dart';

class Result extends StatefulWidget {
  final double bmiValue;
  const Result({Key? key, required this.bmiValue}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(MyTexts.bmiCalculator),
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

          Text(MyTexts.yourBMIIs, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2,),
          const SizedBox(height: 10),

          Text(widget.bmiValue.toStringAsFixed(2), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline1,),

          const SizedBox(height: 50),

          Text(MyTexts.bmiCategories, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),),
          const SizedBox(height: 10),
          Text(MyTexts.underWeight, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),),
          Text(MyTexts.normalWeight, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),),
          Text(MyTexts.overWeight, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),),
          Text(MyTexts.obesity, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),),
        ],
      ),
    );
  }
}
