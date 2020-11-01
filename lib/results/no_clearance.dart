import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/generated/l10n.dart';
import 'package:parq/results/final_screen_buttons.dart';

class NoClearance extends StatefulWidget {
  static const id = 'no_clearance';

  @override
  _NoClearanceState createState() => _NoClearanceState();
}

class _NoClearanceState extends State<NoClearance>
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: Theme.of(context).textTheme.headline1.fontSize,
              child: Icon(
                FontAwesomeIcons.userMd,
                size: Theme.of(context).textTheme.headline1.fontSize *
                    animation.value,
                color: Theme.of(context).textTheme.headline6.color,
              ),
            ),
            Text(
              S.of(context).noClearance,
              style: Theme.of(context).textTheme.headline6,
            ),
            FinalScreenButtons(),
          ],
        ),
      ),
    );
  }
}
