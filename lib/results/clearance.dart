import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/common_widgets/bullet_point.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: Theme.of(context).textTheme.headline1.fontSize,
              child: Icon(
                FontAwesomeIcons.running,
                size: Theme.of(context).textTheme.headline1.fontSize *
                    animation.value,
                color: Theme.of(context).textTheme.headline6.color,
              ),
            ),
            Text(
              'Your are cleared for physical activity',
              style: Theme.of(context).textTheme.headline6,
            ),
            Column(
              children: [
                BulletPoint(
                  text:
                      'Start becoming more physically active – start slowly and build up gradually.',
                ),
                SizedBox(
                  height: 16,
                ),
                BulletPoint(
                  text:
                      'If you are over the age of 45 years and NOT accustomed to regular vigorous to maximal effort exercise, consult a qualified exercise '
                      'professional before engaging in this intensity of exercise.',
                ),
                SizedBox(
                  height: 16,
                ),
                BulletPoint(
                  text:
                      'Delay becoming more active if you have a temporary illness, if your are pregnant or if your health changes.',
                ),
                SizedBox(
                  height: 16,
                ),
                BulletPoint(
                  text:
                      'If you have any further questions, contact a qualified exercise professional.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
