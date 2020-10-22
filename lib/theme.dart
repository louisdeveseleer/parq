import 'package:flutter_neumorphic/flutter_neumorphic.dart';

TextStyle kTitleStyle = TextStyle(
  fontFamily: 'Roboto',
  color: Color(0xfff7efe4),
);

Color accentColor = Color(0xfff5b788);
Color variantColor = Color(0xff8aaebc);

ThemeData themeData = ThemeData(
    primaryColor: Color(0xff416678),

    // fontFamily: 'Lora',
    textTheme: TextTheme(
      bodyText2: kTitleStyle.copyWith(
        fontSize: 14,
      ),
      headline6: kTitleStyle.copyWith(
        fontSize: 20,
        height: 1.4,
      ),
      subtitle1: kTitleStyle.copyWith(
        fontSize: 14,
        height: 1.3,
      ),
      button: kTitleStyle.copyWith(
        color: accentColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1.0,
      ),
    ),
    accentColor: accentColor,
    hintColor: variantColor);

BoxDecoration backgroundDecoration = BoxDecoration(
  gradient: RadialGradient(
    center: Alignment.topLeft,
    radius: 1.0,
    colors: [
      const Color(0xff416678),
      const Color(0xff2b4b5a),
    ], // red to yellow
  ),
);
