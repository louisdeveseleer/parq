import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;
import 'package:parq/common_widgets/main_button.dart';
import 'package:parq/generated/l10n.dart';

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
                    // radius: Radius.circular(2),
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
                                S.of(context).ghqIntroDisclaimer1,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontSize: 18),
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
                                S.of(context).ghqIntroDisclaimer2,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontSize: 18),
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
                                S.of(context).ghqIntroDisclaimer3,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontSize: 18),
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
            height: 32,
          ),
          MainButton(
            onPressed: widget.callback,
            child: Text(
              S.of(context).ghqIntroActionButton,
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
