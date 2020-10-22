import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  final String text;
  BulletPoint({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.check_circle,
          size: 16,
          color: Colors.white,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text(
            text,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
