import 'package:flutter/material.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/general_health_questions/ghq_intro.dart';
import 'package:parq/general_health_questions/ghq_summary.dart';
import 'package:parq/general_health_questions/ghq_list_provider.dart';
import 'package:parq/general_health_questions/ghq_structure.dart';
import 'package:provider/provider.dart';
import 'package:parq/generated/l10n.dart';

class GHQMainScreen extends StatefulWidget {
  static const id = 'general_health_questions';

  @override
  _GHQMainScreenState createState() => _GHQMainScreenState();
}

class _GHQMainScreenState extends State<GHQMainScreen> {
  PageController pageController = PageController();
  List<Widget> listOfPages;
  int initialPage = 0;
  double currentPosition = 0;
  VoidCallback pageChangeAnimation;

  @override
  void initState() {
    pageController = PageController(initialPage: initialPage);
    pageController.addListener(() {
      setState(() {
        currentPosition = pageController.page;
      });
    });
    pageChangeAnimation = () {
      pageController.nextPage(
          duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    listOfPages = List.generate(
      7,
      // QuestionsList().questions.length,
      (index) =>
          GHQStructure(questionIndex: index, callback: pageChangeAnimation),
    );
    listOfPages.insert(0, GHQIntro(callback: pageChangeAnimation));
    listOfPages.add(GHQSummary(
      pageController: pageController,
    ));

    return BasicScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 8,
          ),
          QuestionsSlider(
            pageController: pageController,
            currentPosition: currentPosition,
          ),
          Expanded(
            child: Container(
              child: ChangeNotifierProvider<GHQList>(
                create: (context) => GHQList(),
                child: PageView(
                  controller: pageController,
                  children: listOfPages,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionsSlider extends StatelessWidget {
  final double currentPosition;
  final PageController pageController;
  QuestionsSlider({
    @required this.currentPosition,
    @required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    int currentQuestion = currentPosition.round();
    if (currentQuestion < 1) currentQuestion = 1;
    if (currentQuestion > 7) currentQuestion = 7;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: (currentPosition > 0.8 && currentPosition < 7.2) ? 1.0 : 0.0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(S.of(context).ghqSliderTitle(currentQuestion)),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 2.0),
            ),
            child: Slider(
              activeColor: Theme.of(context).accentColor,
              inactiveColor: Theme.of(context).accentColor.withOpacity(0.2),
              onChanged: (_) {},
              value: currentPosition,
              min: 0,
              max: 8,
            ),
          ),
        ),
      ],
    );
  }
}
