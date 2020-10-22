import 'package:flutter/foundation.dart';
import 'package:parq/general_health_questions/ghq_item_model.dart';

class GHQList extends ChangeNotifier {
  List<GHQItem> _questions = [
    GHQItem(
      title:
          'Has your doctor ever said that you have a heart condition OR high blood pressure ?',
      short: 'Heart condition or high blood pressure',
    ),
    GHQItem(
      title:
          'Do you feel pain in your chest at rest, during your daily activities of living, OR when you do '
          'physical activity?',
      short: 'Chest pain',
    ),
    GHQItem(
      title:
          'Do you lose balance because of dizziness OR have you lost consciousness in the last 12 months ?',
      subtitle:
          'Please answer NO if your dizziness was associated with over-breathing (including during vigorous exercise).',
      short: 'Loss of balance or consciousness',
    ),
    GHQItem(
      title:
          'Have you ever been diagnosed with another chronic medical condition (other than heart disease '
          'or high blood pressure) ?',
      short: 'Chronic medical condition',
    ),
    GHQItem(
      title:
          'Are you currently taking prescribed medications for a chronic medical condition ?',
      short: 'Medication for chronic medical condition',
    ),
    GHQItem(
      title:
          'Do you currently have (or have had within the past 12 months) a bone, joint, or soft tissue '
          '(muscle, ligament, or tendon) problem that could be made worse by becoming more physically '
          'active ?',
      subtitle:
          'Please answer NO if you had a problem in the past, but it does not limit your current ability to be physically active.',
      short: 'Past injury presenting risks',
    ),
    GHQItem(
      title:
          'Has your doctor ever said that you should only do medically supervised physical activity ?',
      short: 'Need for medical supervision',
    ),
  ];

  List<GHQItem> get questions {
    return _questions;
  }

  void setAnswer(bool value, int index) {
    _questions[index].answer = value;
    notifyListeners();
  }
}
