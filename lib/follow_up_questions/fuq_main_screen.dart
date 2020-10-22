import 'package:flutter/material.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/follow_up_questions/fuq_list.dart';
import 'package:parq/follow_up_questions/fuq_section_content.dart';
import 'package:provider/provider.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;

class FUQMainScreen extends StatefulWidget {
  static const id = 'fuq_main_screen';

  @override
  _FUQMainScreenState createState() => _FUQMainScreenState();
}

class _FUQMainScreenState extends State<FUQMainScreen>
    with SingleTickerProviderStateMixin {
  Animation<Offset> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation =
        Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutExpo),
    )..addListener(() {
            setState(() {});
          });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasicScreen(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
        child: ChangeNotifierProvider<FUQList>(
          create: (context) => FUQList(),
          child: SlideTransition(
            position: _animation,
            child: neu.Neumorphic(
              style: neu.NeumorphicStyle(
                depth: 4,
                shape: neu.NeumorphicShape.convex,
                color: Colors.transparent,
                boxShape: neu.NeumorphicBoxShape.roundRect(
                  BorderRadius.vertical(
                    top: Radius.circular(16),
                    bottom: Radius.zero,
                  ),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: FUQSectionContent(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
