import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:parq/general_health_questions/ghq_item_model.dart';
import 'package:parq/generated/l10n.dart';

class GHQList extends ChangeNotifier {
  List<bool> _answers;

  GHQList() {
    _answers = List.generate(7, (index) => null);
  }

  List<bool> get answers {
    return _answers;
  }

  List<GHQItem> questions(BuildContext context) {
    return _questions(context);
  }

  void setAnswer(bool value, int index) {
    _answers[index] = value;
    notifyListeners();
  }

  static List<GHQItem> _questions(BuildContext context) {
    final _questionsList = [
      GHQItem(
        title: S.of(context).ghqQ1Title,
        short: S.of(context).ghqQ1Short,
      ),
      GHQItem(
        title: S.of(context).ghqQ2Title,
        short: S.of(context).ghqQ2Short,
      ),
      GHQItem(
        title: S.of(context).ghqQ3Title,
        subtitle: S.of(context).ghqQ3Subtitle,
        short: S.of(context).ghqQ3Short,
      ),
      GHQItem(
        title: S.of(context).ghqQ4Title,
        short: S.of(context).ghqQ4Short,
      ),
      GHQItem(
        title: S.of(context).ghqQ5Title,
        short: S.of(context).ghqQ5Short,
      ),
      GHQItem(
        title: S.of(context).ghqQ6Title,
        subtitle: S.of(context).ghqQ6Subtitle,
        short: S.of(context).ghqQ6Short,
      ),
      GHQItem(
        title: S.of(context).ghqQ7Title,
        short: S.of(context).ghqQ7Short,
      ),
    ];
    return _questionsList;
  }
}
