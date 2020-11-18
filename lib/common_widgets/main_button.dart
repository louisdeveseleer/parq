import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  MainButton({
    @required this.onPressed,
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: StadiumBorder(
        side: BorderSide(
          color: Theme.of(context).accentColor,
          width: 1,
        ),
      ),
      color: Theme.of(context).primaryColorDark,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      onPressed: onPressed,
      child: child,
    );
  }
}
