import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            visualDensity: VisualDensity.compact,
            icon: Icon(
              FontAwesomeIcons.heartbeat,
            ),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            '2020 PAR-Q+',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Theme.of(context).accentColor,
                ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
