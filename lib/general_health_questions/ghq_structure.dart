import 'package:flutter/material.dart';
import 'package:parq/common_widgets/my_radio_button.dart';
import 'package:parq/common_widgets/scroll_column_expandable.dart';
import 'package:parq/general_health_questions/ghq_list_provider.dart';
import 'package:parq/keys.dart';
import 'package:provider/provider.dart';
import 'package:parq/generated/l10n.dart';

class GHQStructure extends StatelessWidget {
  final VoidCallback callback;
  final int questionIndex;
  GHQStructure({
    @required this.callback,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ScrollColumnExpandable(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Text(
                Provider.of<GHQList>(context, listen: false)
                    .questions(context)[questionIndex]
                    .title,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                Provider.of<GHQList>(context, listen: false)
                        .questions(context)[questionIndex]
                        .subtitle ??
                    '',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          Consumer<GHQList>(
            builder: (context, questionsListProvider, _) {
              bool groupValue = questionsListProvider.answers[questionIndex];
              void onChanged(value) {
                questionsListProvider.setAnswer(value, questionIndex);
                if (value != null) callback();
              }

              return ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                buttonPadding: EdgeInsets.all(8),
                children: [
                  MyRadioButton(
                    key: Key(Keys.ghqYesButton),
                    onChanged: onChanged,
                    groupValue: groupValue,
                    value: true,
                    text: S.of(context).actionButtonYES,
                  ),
                  MyRadioButton(
                    key: Key(Keys.ghqNoButton),
                    onChanged: onChanged,
                    groupValue: groupValue,
                    value: false,
                    text: S.of(context).actionButtonNO,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
