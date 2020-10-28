import 'package:flutter/material.dart';
import 'package:parq/common_widgets/main_button.dart';
import 'package:parq/general_health_questions/ghq_follow_up.dart';
import 'package:parq/general_health_questions/ghq_item_model.dart';
import 'package:parq/general_health_questions/ghq_list_provider.dart';
import 'package:parq/results/clearance.dart';
import 'package:provider/provider.dart';
import 'package:parq/generated/l10n.dart';

class GHQSummary extends StatelessWidget {
  final PageController pageController;
  GHQSummary({@required this.pageController});

  @override
  Widget build(BuildContext context) {
    List<bool> answers = Provider.of<GHQList>(context, listen: false).answers;
    List<TableRow> tableContent = [];
    List<GHQItem> questions =
        Provider.of<GHQList>(context, listen: true).questions(context);
    for (int i = 0; i < questions.length; i++) {
      tableContent.add(
        TableRow(
          decoration: BoxDecoration(
            color: i.isEven ? Colors.black12 : Colors.transparent,
          ),
          children: [
            TableRowInkWell(
              onTap: () {
                pageController.animateToPage(
                  i + 1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(questions[i].short),
              ),
            ),
            answers[i] == true
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Container(),
            answers[i] == false
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Container(),
          ],
        ),
      );
    }

    tableContent.insert(
        0,
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                S.of(context).ghqSummaryQuestionTitle,
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
                S.of(context).ghqSummaryYesTitle,
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
                S.of(context).ghqSummaryNoTitle,
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
        .answers
        .any((answer) => answer == null);
    bool isNotFit = Provider.of<GHQList>(context, listen: false)
        .answers
        .any((answer) => answer == true);

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
              S.of(context).ghqSummaryNotComplete,
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
                S.of(context).ghqSummaryActionButtonTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.button,
              ),
            ),
        ],
      ),
    );
  }
}
