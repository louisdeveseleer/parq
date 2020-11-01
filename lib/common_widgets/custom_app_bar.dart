import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parq/common_widgets/my_show_about_dialog.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: () => myShowAboutDialog(context),
            visualDensity: VisualDensity.compact,
            icon: Icon(
              FontAwesomeIcons.heartbeat,
            ),
            color: Theme.of(context).hintColor,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            '2020 PAR-Q+',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Theme.of(context).hintColor,
                ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
