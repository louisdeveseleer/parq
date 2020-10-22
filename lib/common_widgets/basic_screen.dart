import 'package:flutter/material.dart';
import 'package:parq/common_widgets/custom_app_bar.dart';
import 'package:parq/theme.dart';

class BasicScreen extends StatelessWidget {
  final Widget child;
  BasicScreen({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
