import 'package:bmi_calculator/components/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyToggleButton extends StatefulWidget {
  final Function callBackFunction;

  const MyToggleButton({Key? key, required this.callBackFunction})
      : super(key: key);

  @override
  State<MyToggleButton> createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        setState(() {
          widget.callBackFunction(value);
        });
      },
    );
  }
}
