import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:parq/theme.dart';
import 'package:parq/welcome_page.dart';
import 'package:parq/router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'PAR-Q+',
      themeMode: ThemeMode.light,
      theme: themeData,
      home: WelcomePage(),
      onGenerateRoute: router.generateRoute,
    );
  }
}
