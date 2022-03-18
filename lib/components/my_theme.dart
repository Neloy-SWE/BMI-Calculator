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
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 25,
      ),
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
      headline2: TextStyle(
        fontSize: 45,
        fontFamily: MyTexts.regular,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontFamily: MyTexts.regular,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 10,
        fontFamily: MyTexts.regular,
        color: Colors.white,
      ),
      button: TextStyle(
        fontSize: 16,
        fontFamily: MyTexts.regular,
        color: MyColors.primaryColor,
      ),
      subtitle1: TextStyle(
        fontSize: 12,
        fontFamily: MyTexts.regular,
        color: Colors.white70,
      ),
      subtitle2: TextStyle(
        fontSize: 10,
        fontFamily: MyTexts.bolt,
        color: Colors.red,
      ),
    ),

    // icon theme
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 100,
    ),

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.white),
      trackColor: MaterialStateProperty.all(MyColors.toggleBack),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      // alignLabelWithHint: true,
      isCollapsed: true,
      contentPadding: EdgeInsets.only(left: 10),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        borderSide: BorderSide(width: 0.5, color: Colors.white70),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        borderSide: BorderSide(width: 1, color: Colors.white),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
      ),
    ),
  );

  static final lightTheme = ThemeData(
    // app background color
    scaffoldBackgroundColor: Colors.white,

    // app bar theme
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: MyColors.primaryColor,
        size: 25,
      ),
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
      headline2: TextStyle(
        fontSize: 45,
        fontFamily: MyTexts.regular,
        color: MyColors.primaryColor,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontFamily: MyTexts.regular,
        color: MyColors.primaryColor,
      ),
      bodyText2: TextStyle(
        fontSize: 10,
        fontFamily: MyTexts.regular,
        color: MyColors.primaryColor,
      ),
      button: TextStyle(
        fontSize: 16,
        fontFamily: MyTexts.regular,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 12,
        fontFamily: MyTexts.regular,
        color: MyColors.primaryBack,
      ),
      subtitle2: TextStyle(
        fontSize: 10,
        fontFamily: MyTexts.bolt,
        color: Colors.red,
      ),
    ),

    // icon theme
    iconTheme: const IconThemeData(
      color: MyColors.primaryColor,
      size: 100,
    ),

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(MyColors.primaryColor),
      trackColor: MaterialStateProperty.all(Colors.black12),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      // alignLabelWithHint: true,
      isCollapsed: true,
      contentPadding: EdgeInsets.only(left: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        borderSide: BorderSide(width: 0.5, color: MyColors.primaryBack),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        borderSide: BorderSide(width: 1, color: MyColors.primaryColor),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: MyColors.primaryColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        ),
      ),
    ),
  );
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
