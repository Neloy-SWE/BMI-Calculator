import 'package:bmi_calculator/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/texts.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    // app background color
    scaffoldBackgroundColor: MyColors.primaryColor,

    // app bar theme
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      color: MyColors.primaryColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: MyTexts.bolt,
        fontSize: 24,
      ),
    ),

    // text theme
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 45,
        fontFamily: MyTexts.bolt,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontFamily: MyTexts.regular,
        color: Colors.white,
      ),
    ),

    // icon theme
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 100,
    ),
  );

  static final lightTheme = ThemeData(
    // app background color
    scaffoldBackgroundColor: Colors.white,

    // app bar theme
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),

      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: MyColors.primaryColor,
        fontFamily: MyTexts.bolt,
        fontSize: 24,
      ),
    ),

    // text theme
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 45,
        fontFamily: MyTexts.bolt,
        color: MyColors.primaryColor,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontFamily: MyTexts.regular,
        color: MyColors.primaryColor,
      ),
    ),

    // icon theme
    iconTheme: const IconThemeData(
      color: MyColors.primaryColor,
      size: 100,
    ),
  );
}

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

}
