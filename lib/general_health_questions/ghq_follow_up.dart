import 'package:flutter/material.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/common_widgets/main_button.dart';
import 'package:parq/follow_up_questions/fuq_main_screen.dart';

class GHQFollowUp extends StatelessWidget {
  static const id = 'ghq_follow_up';

  @override
  Widget build(BuildContext context) {
    return BasicScreen(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'You have answered YES to some questions. Further information is needed to determine your readiness to engage in increased physical activity.',
              style: Theme.of(context).textTheme.headline6,
            ),
            MainButton(
              onPressed: () {
                Navigator.pushNamed(context, FUQMainScreen.id);
              },
              child: Text(
                'Okay, let\'s go',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
