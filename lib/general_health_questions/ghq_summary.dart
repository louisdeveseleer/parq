import 'package:flutter/material.dart';
import 'package:parq/common_widgets/main_button.dart';
import 'package:parq/general_health_questions/ghq_follow_up.dart';
import 'package:parq/general_health_questions/ghq_list_provider.dart';
import 'package:parq/results/clearance.dart';
import 'package:provider/provider.dart';

class GHQSummary extends StatelessWidget {
  final PageController pageController;
  GHQSummary({@required this.pageController});

  @override
  Widget build(BuildContext context) {
    List<TableRow> tableContent = Provider.of<GHQList>(context, listen: true)
        .questions
        .map((questionItem) {
      int index = Provider.of<GHQList>(context, listen: false)
          .questions
          .indexOf(questionItem);
      return TableRow(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.black12 : Colors.transparent,
          ),
          children: [
            TableRowInkWell(
              onTap: () {
                index++;
                pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(questionItem.short),
              ),
            ),
            questionItem.answer == true
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Container(),
            questionItem.answer == false
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Container(),
          ]);
    }).toList();
    tableContent.insert(
        0,
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Question',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Yes',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'No',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));

    bool testNotComplete = Provider.of<GHQList>(context, listen: false)
        .questions
        .any((questionItem) => questionItem.answer == null);
    bool isNotFit = Provider.of<GHQList>(context, listen: false)
        .questions
        .any((questionItem) => questionItem.answer == true);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Table(
            border: TableBorder(
              verticalInside: BorderSide(color: Colors.black26),
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            defaultColumnWidth: IntrinsicColumnWidth(),
            children: tableContent,
          ),
          if (testNotComplete)
            Text(
              'Some questions are unanswered.',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            )
          else
            MainButton(
              onPressed: () {
                if (isNotFit)
                  Navigator.pushNamed(context, GHQFollowUp.id);
                else
                  Navigator.pushNamed(context, Clearance.id);
              },
              child: Text(
                'Validate',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.button,
              ),
            ),
        ],
      ),
    );
  }
}
