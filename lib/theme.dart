import 'package:flutter/material.dart';

Color accentColor = Color(0xfff5b788);
Color variantColor = Color(0xff8aaebc);
Color primaryColor = Color(0xff416678);
Color primaryColorDark = Color(0xff2b4b5a);

ThemeData themeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  primaryColorDark: primaryColorDark,
  // fontFamily: 'Lora',
  textTheme: TextTheme(
    bodyText2: TextStyle(
      fontSize: 14,
    ),
    headline6: TextStyle(
      fontSize: 20,
      height: 1.4,
    ),
    subtitle1: TextStyle(
      fontSize: 14,
      height: 1.3,
    ),
    button: TextStyle(
      color: accentColor,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 1.0,
    ),
  ),
  accentColor: accentColor,
  hintColor: variantColor,
);

BoxDecoration backgroundDecoration = BoxDecoration(
  gradient: RadialGradient(
    center: Alignment.topLeft,
    radius: 1.0,
    colors: [
      primaryColor,
      primaryColorDark,
    ], // red to yellow
  ),
);
