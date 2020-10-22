import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;

class MainButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  MainButton({
    @required this.onPressed,
    @required this.child,
  });

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutSine),
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
    return neu.NeumorphicButton(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      onPressed: widget.onPressed,
      child: Opacity(opacity: 1.0 * _animation.value, child: widget.child),
      style: neu.NeumorphicStyle(
        depth: 4 * _animation.value,
        color: Colors.transparent,
        shape: neu.NeumorphicShape.convex,
        boxShape: neu.NeumorphicBoxShape.stadium(),
        intensity: 0.5 * _animation.value,
        surfaceIntensity: 0.25 * _animation.value,
      ),
    );
  }
}
