import 'package:flutter/material.dart';

import '../../utils/color_constants.dart';

class StyleTheme {
  ThemeData getLightTheme() {
    return ThemeData(
      primaryColor: cPrimaryColor,

      shadowColor: const Color(0xffebedeb),
      hintColor: const Color(0xffACACAC),
      scaffoldBackgroundColor: cScaffoldBackground,
      backgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(color: cPrimaryColor),
      inputDecorationTheme:
          const InputDecorationTheme(fillColor: Color(0xffE5E5E5)),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          //  secondary: primaryColor,
          secondaryContainer: cSecondaryContainer,
          onPrimary: cOnPrimary,
          primary: cPrimaryColor,
          // header background color// header text color
          onSurface: Colors.blue,

          primaryContainer: cPrimaryContainer),
      cardColor: cSecondaryContainer,
      textTheme: const TextTheme(
        labelMedium:  TextStyle(color: cPrimaryContainer),

        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.black),
        headline1: TextStyle(color: cOnPrimary),
        caption: TextStyle(color: cPrimaryColor),
      ),


      buttonTheme: const ButtonThemeData(buttonColor: cPrimaryColor,
          shape: RoundedRectangleBorder(),
      textTheme: ButtonTextTheme.accent,
      ),
    );
  }
}
