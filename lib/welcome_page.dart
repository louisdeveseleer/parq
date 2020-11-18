import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parq/common_widgets/main_button.dart';
import 'package:parq/general_health_questions/ghq_main_screen.dart';
import 'package:parq/keys.dart';
import 'package:parq/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'generated/l10n.dart';

class WelcomePage extends StatefulWidget {
  static const id = 'welcome_page';

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void changeLanguage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double iconWidth = min(constraints.maxWidth, constraints.maxHeight);
          return Stack(
            children: [
              Positioned.fromRect(
                rect: Rect.fromCenter(
                    center: Offset(
                      constraints.maxWidth - iconWidth / 4,
                      iconWidth / 4,
                    ),
                    width: iconWidth,
                    height: iconWidth),
                child: BeatingHeartIcon(
                  iconWidth: iconWidth,
                ),
              ),
              Positioned(
                top: 20,
                left: 8,
                child: Row(
                  children: [
                    Icon(Icons.language),
                    SizedBox(width: 8),
                    LanguageDropdown(
                      callback: changeLanguage,
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: 450,
                  height: 600,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: constraints.maxHeight / 4,
                          ),
                          Text(
                            '2020 PAR-Q+',
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            S.of(context).welcomePageSubtitle,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: Theme.of(context).hintColor,
                                    ),
                            textAlign: TextAlign.start,
                          ),
                          Center(
                            child: Container(
                              child: MainButton(
                                key: Key(Keys.welcomePageButton),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, GHQMainScreen.id);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      S.of(context).welcomePageActionButton,
                                      style: Theme.of(context).textTheme.button,
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      width: 32,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.longArrowAltRight,
                                      color: Theme.of(context)
                                          .textTheme
                                          .button
                                          .color,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class LanguageDropdown extends StatelessWidget {
  final callback;
  LanguageDropdown({this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        value: Intl.getCurrentLocale(),
        onChanged: (String newValue) {
          callback();
          S.load(Locale(newValue));
        },
        items: S.delegate.supportedLocales
            .map<DropdownMenuItem<String>>((Locale locale) {
          return DropdownMenuItem<String>(
            value: locale.languageCode,
            child: Text(locale.languageCode),
          );
        }).toList(),
      ),
    );
  }
}

class BeatingHeartIcon extends StatefulWidget {
  final double iconWidth;
  BeatingHeartIcon({@required this.iconWidth});

  @override
  _BeatingHeartIconState createState() => _BeatingHeartIconState();
}

class _BeatingHeartIconState extends State<BeatingHeartIcon>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation =
        Tween<double>(begin: widget.iconWidth, end: widget.iconWidth * 0.98)
            .animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOutSine),
    )..addListener(() {
                setState(() {});
              });
    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xffe7c8a9), Color(0xffC4935A)],
      ).createShader(bounds),
      child: Icon(
        FontAwesomeIcons.heartbeat,
        size: animation.value,
        color: Colors.white,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
