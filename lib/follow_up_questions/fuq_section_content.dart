import 'package:flutter/material.dart';
import 'package:parq/common_widgets/my_radio_button.dart';
import 'package:parq/follow_up_questions/fuq_item_model.dart';
import 'package:parq/follow_up_questions/fuq_list.dart';
import 'package:parq/results/clearance.dart';
import 'package:parq/results/no_clearance.dart';
import 'package:provider/provider.dart';

class FUQSectionContent extends StatefulWidget {
  @override
  _FUQSectionContentState createState() => _FUQSectionContentState();
}

class _FUQSectionContentState extends State<FUQSectionContent>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final int animationDuration = 200;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: animationDuration));
    _controller.value = 1.0;
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FUQList>(
      builder: (context, fuqList, _) {
        bool groupValue;

        void onChanged(value) {
          groupValue = value;
          _controller.reset();
          _controller.forward().whenComplete(() {
            fuqList.nextQuestion(value);
            if (fuqList.isFit == true) {
              fuqList.initialize();
              Navigator.pushNamed(context, Clearance.id);
            } else if (fuqList.isFit == false) {
              fuqList.initialize();
              Navigator.pushNamed(context, NoClearance.id);
            }
          });
          groupValue = null;
        }

        FUQQuestion currentQuestion = fuqList.currentQuestion;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: animationDuration),
                opacity: _controller.value < 1 ? 0.0 : 1.0,
                child: Column(
                  children: [
                    Text(
                      currentQuestion.main,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      currentQuestion.sub ?? '',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            Row(
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
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: fuqList.isFirstQuestion()
                  ? Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
                    )
                  : InkWell(
                      onTap: () {
                        _controller.reset();
                        _controller.forward().whenComplete(() {
                          fuqList.previousQuestion();
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: Theme.of(context).textTheme.button.color,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Previous question',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.button.color,
                            ),
                          ),
                        ],
                      ),
                    ),
            )
          ],
        );
      },
    );
  }
}
