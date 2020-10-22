import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;

class MyRadioButton extends StatelessWidget {
  final Function onChanged;
  final bool groupValue;
  final bool value;
  final String text;
  MyRadioButton({
    this.onChanged,
    this.groupValue,
    this.value,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return neu.NeumorphicRadio(
      value: value,
      groupValue: groupValue,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      onChanged: (value) => onChanged(value),
      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
      style: neu.NeumorphicRadioStyle(
        unselectedColor: Colors.transparent,
        selectedColor: Colors.black12,
        shape: neu.NeumorphicShape.convex,
        boxShape: neu.NeumorphicBoxShape.stadium(),
        intensity: 0.5,
      ),
    );
  }
}
