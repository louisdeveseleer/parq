import 'package:flutter/material.dart';
import 'package:parq/theme.dart';
import 'package:parq/welcome_page.dart';
import 'package:parq/router.dart' as router;
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PAR-Q+',
      themeMode: ThemeMode.dark,
      theme: themeData,
      home: WelcomePage(),
      onGenerateRoute: router.generateRoute,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
