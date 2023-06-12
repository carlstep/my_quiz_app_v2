class QuizQuestion {
  const QuizQuestion(
    this.questionText,
    this.answers,
  );

  final String questionText;
  final List<String> answers;

// method to copy the answers and shuffle them.
// use getShuffledAnswers() in questions_screen.dart
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
