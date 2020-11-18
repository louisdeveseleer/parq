import 'package:flutter/material.dart';
import 'package:parq/common_widgets/main_button.dart';
import 'package:parq/common_widgets/my_show_about_dialog.dart';
import 'package:parq/keys.dart';
import 'package:parq/welcome_page.dart';

class FinalScreenButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MainButton(
              key: Key(Keys.finalScreenInfoButton),
              onPressed: () => myShowAboutDialog(context),
              child: Icon(Icons.info),
            ),
            MainButton(
              key: Key(Keys.finalScreenResetButton),
              onPressed: () =>
                  Navigator.popAndPushNamed(context, WelcomePage.id),
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ],
    );
  }
}
