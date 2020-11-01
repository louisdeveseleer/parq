import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/common_widgets/bullet_point.dart';
import 'package:parq/generated/l10n.dart';
import 'package:parq/results/final_screen_buttons.dart';

class Clearance extends StatefulWidget {
  static const id = 'clearance';

  @override
  _ClearanceState createState() => _ClearanceState();
}

class _ClearanceState extends State<Clearance>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.elasticOut),
    )..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasicScreen(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                height: Theme.of(context).textTheme.headline1.fontSize,
                child: Icon(
                  FontAwesomeIcons.running,
                  size: Theme.of(context).textTheme.headline1.fontSize *
                      animation.value,
                  color: Theme.of(context).textTheme.headline6.color,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  S.of(context).clearanceTitle,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Column(
                children: [
                  BulletPoint(text: S.of(context).clearanceSub1),
                  SizedBox(height: 16),
                  BulletPoint(text: S.of(context).clearanceSub2),
                  SizedBox(height: 16),
                  BulletPoint(text: S.of(context).clearanceSub3),
                  SizedBox(height: 16),
                  BulletPoint(text: S.of(context).clearanceSub4),
                ],
              ),
              FinalScreenButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
