class FUQItem {
  FUQQuestion mainQuestion;
  List<FUQQuestion> secondaryQuestion;

  FUQItem({this.mainQuestion, this.secondaryQuestion});
}

class FUQQuestion {
  String main;
  String sub;

  FUQQuestion({this.main, this.sub});
}
