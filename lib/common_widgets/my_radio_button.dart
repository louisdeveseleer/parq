import 'package:flutter/material.dart';

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
    return RaisedButton(
      shape: StadiumBorder(
        side: BorderSide(
          color: Theme.of(context).accentColor,
          width: 1,
        ),
      ),
      color: value == groupValue
          ? Theme.of(context).primaryColor
          : Theme.of(context).primaryColorDark,
      onPressed: () => onChanged(value),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
