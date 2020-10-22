import 'package:flutter/material.dart';
import 'package:parq/common_widgets/my_radio_button.dart';
import 'package:parq/general_health_questions/ghq_list_provider.dart';
import 'package:provider/provider.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Text(
                Provider.of<GHQList>(context, listen: false)
                    .questions[questionIndex]
                    .title,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                Provider.of<GHQList>(context, listen: false)
                        .questions[questionIndex]
                        .subtitle ??
                    '',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          Consumer<GHQList>(
            builder: (context, questionsListProvider, _) {
              bool groupValue =
                  questionsListProvider.questions[questionIndex].answer;
              void onChanged(value) {
                questionsListProvider.setAnswer(value, questionIndex);
                if (value != null) callback();
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyRadioButton(
                    onChanged: onChanged,
                    groupValue: groupValue,
                    value: true,
                    text: 'YES',
                  ),
                  MyRadioButton(
                    onChanged: onChanged,
                    groupValue: groupValue,
                    value: false,
                    text: 'NO',
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
