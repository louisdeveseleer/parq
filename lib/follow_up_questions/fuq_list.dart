import 'package:flutter/cupertino.dart';
import 'package:parq/follow_up_questions/fuq_item_model.dart';
import 'package:parq/generated/l10n.dart';

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

  void nextQuestion(BuildContext context, bool answer) {
    if (_secondaryQuestion == false) {
      if (answer == false) {
        if (_questionIndex < _questions(context).length - 1) {
          _questionIndex++;
        } else {
          _isFit = true;
        }
      } else if (answer == true) {
        _secondaryQuestion = true;
        _secondaryIndex = 0;
      }
    } else if (_secondaryQuestion == true) {
      if (answer == false) {
        if (_secondaryIndex <
            _questions(context)[_questionIndex].secondaryQuestion.length - 1) {
          _secondaryIndex++;
        } else {
          if (_questionIndex < _questions(context).length - 1) {
            _secondaryQuestion = false;
            _questionIndex++;
          } else {
            _isFit = true;
          }
        }
      } else if (answer == true) {
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

  FUQQuestion currentQuestion(BuildContext context) {
    if (_secondaryQuestion == false)
      return _questions(context)[_questionIndex].mainQuestion;
    else
      return _questions(context)[_questionIndex]
          .secondaryQuestion[_secondaryIndex];
  }

  static List<FUQItem> _questions(BuildContext context) {
    return [
      FUQItem(
          mainQuestion: FUQQuestion(main: S.of(context).fuqQ1MainMain),
          secondaryQuestion: [
            FUQQuestion(
                main: S.of(context).fuqQ1Sec1Main,
                sub: S.of(context).fuqQ1Sec1Sub),
            FUQQuestion(main: S.of(context).fuqQ1Sec2Main),
            FUQQuestion(main: S.of(context).fuqQ1Sec3Main),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(main: S.of(context).fuqQ2MainMain),
          secondaryQuestion: [
            FUQQuestion(main: S.of(context).fuqQ2Sec1Main),
            FUQQuestion(main: S.of(context).fuqQ2Sec2Main),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(
              main: S.of(context).fuqQ3MainMain,
              sub: S.of(context).fuqQ3MainSub),
          secondaryQuestion: [
            FUQQuestion(
                main: S.of(context).fuqQ3Sec1Main,
                sub: S.of(context).fuqQ3Sec1Sub),
            FUQQuestion(
                main: S.of(context).fuqQ3Sec2Main,
                sub: S.of(context).fuqQ3Sec2Sub),
            FUQQuestion(main: S.of(context).fuqQ3Sec3Main),
            FUQQuestion(main: S.of(context).fuqQ3Sec3Sub),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(main: S.of(context).fuqQ4MainMain),
          secondaryQuestion: [
            FUQQuestion(
                main: S.of(context).fuqQ4Sec1Main,
                sub: S.of(context).fuqQ4Sec1Sub),
            FUQQuestion(
                main: S.of(context).fuqQ4Sec2Main,
                sub: S.of(context).fuqQ4Sec2Sub),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(
              main: S.of(context).fuqQ5MainMain,
              sub: S.of(context).fuqQ5MainSub),
          secondaryQuestion: [
            FUQQuestion(main: S.of(context).fuqQ5Sec1Main),
            FUQQuestion(
                main: S.of(context).fuqQ5Sec2Main,
                sub: S.of(context).fuqQ5Sec2Sub),
            FUQQuestion(main: S.of(context).fuqQ5Sec3Main),
            FUQQuestion(main: S.of(context).fuqQ5Sec4Main),
            FUQQuestion(main: S.of(context).fuqQ5Sec5Main),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(main: S.of(context).fuqQ6MainMain),
          secondaryQuestion: [
            FUQQuestion(
                main: S.of(context).fuqQ6Sec1Main,
                sub: S.of(context).fuqQ6Sec1Sub),
            FUQQuestion(main: S.of(context).fuqQ6Sec2Main),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(
              main: S.of(context).fuqQ7MainMain,
              sub: S.of(context).fuqQ7MainSub),
          secondaryQuestion: [
            FUQQuestion(
                main: S.of(context).fuqQ7Sec1Main,
                sub: S.of(context).fuqQ7Sec1Sub),
            FUQQuestion(main: S.of(context).fuqQ7Sec2Main),
            FUQQuestion(main: S.of(context).fuqQ7Sec3Main),
            FUQQuestion(main: S.of(context).fuqQ7Sec4Main),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(
              main: S.of(context).fuqQ8MainMain,
              sub: S.of(context).fuqQ8MainSub),
          secondaryQuestion: [
            FUQQuestion(
                main: S.of(context).fuqQ8Sec1Main,
                sub: S.of(context).fuqQ8Sec1Sub),
            FUQQuestion(main: S.of(context).fuqQ8Sec2Main),
            FUQQuestion(main: S.of(context).fuqQ8Sec3Main),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(
              main: S.of(context).fuqQ9MainMain,
              sub: S.of(context).fuqQ9MainSub),
          secondaryQuestion: [
            FUQQuestion(
                main: S.of(context).fuqQ9Sec1Main,
                sub: S.of(context).fuqQ9Sec1Sub),
            FUQQuestion(main: S.of(context).fuqQ9Sec2Main),
            FUQQuestion(main: S.of(context).fuqQ9Sec3Main),
          ]),
      FUQItem(
          mainQuestion: FUQQuestion(main: S.of(context).fuqQ10MainMain),
          secondaryQuestion: [
            FUQQuestion(main: S.of(context).fuqQ10Sec1Main),
            FUQQuestion(main: S.of(context).fuqQ10Sec2Main),
            FUQQuestion(main: S.of(context).fuqQ10Sec3Main),
          ]),
    ];
  }
}
