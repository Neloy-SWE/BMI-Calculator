import 'package:bmi_calculator/components/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyToggleButton extends StatelessWidget {
  const MyToggleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
        value: themeProvider.isDarkMode, onChanged: (value) {

    },);
  }
}
