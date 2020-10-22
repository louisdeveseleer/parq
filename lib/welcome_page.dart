import 'dart:math';
import 'package:flutter/material.dart';
import 'package:parq/common_widgets/linear_gradient_mask.dart';
import 'package:parq/common_widgets/main_button.dart';
import 'package:parq/general_health_questions/ghq_main_screen.dart';
import 'package:parq/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double iconWidth = min(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration,
        child: Stack(
          children: [
            Positioned.fromRect(
              rect: Rect.fromCenter(
                  center: Offset(
                    MediaQuery.of(context).size.width - iconWidth / 4,
                    iconWidth / 4,
                  ),
                  width: iconWidth,
                  height: iconWidth),
              child: BeatingHeartIcon(
                iconWidth: iconWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: iconWidth / 2,
                  ),
                  Text(
                    '2020 PAR-Q+',
                    style: kTitleStyle.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'The Physical Activity Readiness Questionnaire for Everyone',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Theme.of(context).accentColor,
                        ),
                    textAlign: TextAlign.start,
                  ),
                  MainButton(
                    onPressed: () {
                      Navigator.pushNamed(context, GHQMainScreen.id);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Am I ready ?',
                          style: Theme.of(context).textTheme.button,
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          FontAwesomeIcons.longArrowAltRight,
                          color: Theme.of(context).textTheme.button.color,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
    return LinearGradientMask(
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
