import 'package:flutter/material.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/general_health_questions/ghq_intro.dart';
import 'package:parq/general_health_questions/ghq_summary.dart';
import 'package:parq/general_health_questions/ghq_list_provider.dart';
import 'package:parq/general_health_questions/ghq_structure.dart';
import 'package:provider/provider.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;

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
          AnimatedOpacity(
            duration: Duration(milliseconds: 200),
            opacity:
                (currentPosition > 0.8 && currentPosition < 7.2) ? 1.0 : 0.0,
            child: QuestionsSlider(
              currentPosition: currentPosition,
            ),
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
  QuestionsSlider({@required this.currentPosition});

  @override
  Widget build(BuildContext context) {
    int currentQuestion = currentPosition.round();
    if (currentQuestion < 1) currentQuestion = 1;
    if (currentQuestion > 7) currentQuestion = 7;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text('Question $currentQuestion of 7'),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: neu.NeumorphicSlider(
            style: neu.SliderStyle(
              accent: Theme.of(context).primaryColor,
              variant: Theme.of(context).hintColor,
            ),
            value: currentPosition,
            min: 0,
            max: 7,
            thumb: neu.Neumorphic(),
          ),
        ),
      ],
    );
  }
}
