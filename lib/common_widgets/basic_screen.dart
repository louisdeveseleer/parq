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
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomAppBar(),
              Expanded(
                child: Container(),
              ),
              Expanded(
                flex: 10,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      color: Colors.transparent,
                      elevation: 1,
                      child: Container(
                        // padding: EdgeInsets.all(16),
                        width: 450,
                        height: 600,
                        child: child,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
