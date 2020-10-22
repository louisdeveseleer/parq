import 'package:flutter/cupertino.dart';
import 'package:parq/follow_up_questions/fuq_item_model.dart';

class FUQList extends ChangeNotifier {
  int _questionIndex;
  bool _secondaryQuestion;
  int _secondaryIndex;
  bool _isFit;

  FUQList() {
    initialize();
  }

  void initialize() {
    _questionIndex = 0;
    _secondaryQuestion = false;
    _secondaryIndex = 0;
    _isFit = null;
  }

  get isFit => _isFit;

  bool isFirstQuestion() =>
      (_questionIndex == 0 && _secondaryQuestion == false);

  void nextQuestion(bool answer) {
    if (_secondaryQuestion == false) {
      if (answer == false) {
        if (_questionIndex < _questions.length - 1) {
          _questionIndex++;
        } else {
          print('exit questionnaire fit');
          _isFit = true;
        }
      } else if (answer == true) {
        _secondaryQuestion = true;
        _secondaryIndex = 0;
      }
    } else if (_secondaryQuestion == true) {
      if (answer == false) {
        if (_secondaryIndex <
            _questions[_questionIndex].secondaryQuestion.length - 1) {
          _secondaryIndex++;
        } else {
          if (_questionIndex < _questions.length - 1) {
            _secondaryQuestion = false;
            _questionIndex++;
          } else {
            print('exit questionnaire fit');
            _isFit = true;
          }
        }
      } else if (answer == true) {
        print('exit questionnaire not fit');
        _isFit = false;
      }
    }
    notifyListeners();
  }

  void previousQuestion() {
    if (_secondaryQuestion == false) {
      if (_questionIndex >= 1) _questionIndex--;
    } else if (_secondaryQuestion == true) {
      if (_secondaryIndex >= 1)
        _secondaryIndex--;
      else if (_secondaryIndex == 0) _secondaryQuestion = false;
    }

    notifyListeners();
  }

  FUQQuestion get currentQuestion {
    if (_secondaryQuestion == false)
      return _questions[_questionIndex].mainQuestion;
    else
      return _questions[_questionIndex].secondaryQuestion[_secondaryIndex];
  }

  List<FUQItem> _questions = [
    FUQItem(
      mainQuestion: FUQQuestion(
          main: 'Do you have Arthritis, Osteoporosis, or Back Problems?'),
      secondaryQuestion: [
        FUQQuestion(
            main:
                'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
            sub:
                '(Answer NO if you are not currently taking medications or other treatments)'),
        FUQQuestion(
            main:
                'Do you have joint problems causing pain, a recent fracture or fracture caused by osteoporosis or cancer, '
                'displaced vertebra (e.g., spondylolisthesis), and/or spondylolysis/pars defect (a crack in the bony ring on the '
                'back of the spinal column)? '),
        FUQQuestion(
            main:
                'Have you had steroid injections or taken steroid tablets regularly for more than 3 months? '),
      ],
    ),
    FUQItem(
      mainQuestion:
          FUQQuestion(main: 'Do you currently have Cancer of any kind?'),
      secondaryQuestion: [
        FUQQuestion(
          main:
              'Does your cancer diagnosis include any of the following types: lung/bronchogenic, multiple myeloma (cancer of '
              'plasma cells), head, and/or neck?',
        ),
        FUQQuestion(
          main:
              'Are you currently receiving cancer therapy (such as chemotheraphy or radiotherapy)?',
        )
      ],
    ),
    FUQItem(
      mainQuestion: FUQQuestion(
        main: 'Do you have a Heart or Cardiovascular Condition?',
        sub: 'This includes Coronary Artery Disease, Heart Failure, '
            'Diagnosed Abnormality of Heart Rhythm',
      ),
      secondaryQuestion: [
        FUQQuestion(
          main:
              'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies? ',
          sub:
              '(Answer NO if you are not currently taking medications or other treatments)',
        ),
        FUQQuestion(
          main:
              'Do you have an irregular heart beat that requires medical management? ',
          sub: '(e.g., atrial fibrillation, premature ventricular contraction)',
        ),
        FUQQuestion(
          main: 'Do you have chronic heart failure?',
        ),
        FUQQuestion(
          main:
              'Do you have diagnosed coronary artery (cardiovascular) disease and have not participated in regular physical '
              'activity in the last 2 months?',
        ),
      ],
    ),
  ];
}
