import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MyTextField extends StatefulWidget {
  final bool isDark;
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hintText;
  final String labelText;

  const MyTextField({
    Key? key,
    required this.isDark,
    required this.controller,
    required this.textInputType,
    required this.textInputAction,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        style: Theme.of(context).textTheme.bodyText1,
        cursorColor: widget.isDark ? Colors.white : MyColors.primaryColor,
        keyboardType: widget.textInputType,
        controller: widget.controller,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.bodyText1,
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
