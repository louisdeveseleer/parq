import 'package:flutter/material.dart';
import 'file:///C:/Users/Technical.Sales/AndroidStudioProjects/parq/lib/common_widgets/main_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;

class GHQIntro extends StatefulWidget {
  final VoidCallback callback;
  GHQIntro({@required this.callback});

  @override
  _GHQIntroState createState() => _GHQIntroState();
}

class _GHQIntroState extends State<GHQIntro>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return neu.Neumorphic(
                  style: neu.NeumorphicStyle(
                    depth: 4,
                    intensity: 0.5,
                    color: Colors.transparent,
                    shape: neu.NeumorphicShape.convex,
                    boxShape: neu.NeumorphicBoxShape.roundRect(
                      BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  // margin: EdgeInsets.all(16),
                  child: Scrollbar(
                    radius: Radius.circular(2),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(16.0),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minHeight: constraints.maxHeight),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(child: Container()),
                            AnimatedOpacity(
                              child: Text(
                                'This questionnaire will determine whether you should seek medical advice before increasing the intensity of your physical activity.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              opacity: controller.value < 0.1 ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeOut,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            AnimatedOpacity(
                              child: Text(
                                'The health benefits of regular physical activity are clear; more people should engage in physical activity every day of the week. Participating in '
                                'physical activity is very safe for MOST people. This questionnaire will tell you whether it is necessary for you to seek further advice from your doctor '
                                'OR a qualified exercise professional before becoming more physically active. ',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              opacity: controller.value < 0.3 ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeOut,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            AnimatedOpacity(
                              child: Text(
                                'Please read the 7 next questions carefully and answer each one honestly.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              opacity: controller.value < 0.6 ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeOut,
                            ),
                            Flexible(child: Container()),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 16,
          ),
          MainButton(
            onPressed: widget.callback,
            child: Text(
              'Understood',
              style: Theme.of(context).textTheme.button,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
