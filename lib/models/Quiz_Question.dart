class QuizQuestion {
QuizQuestion(this.text,this.answers);

  final text;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

}