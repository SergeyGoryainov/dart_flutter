import 'question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question('Question 1?', false),
    Question('Question 2?', true),
    Question('Question 3?', true),
  ];

  int _activeQuestion = 0;
  bool _isOver = false;

  String getQuestionText() {
    return _questions[_activeQuestion].questionText;
  }

  bool isRightAnswer(bool keyPressed) {
    return _questions[_activeQuestion].questionAnswer == keyPressed;
  }

  void nextQuestion() {
    _activeQuestion = (_activeQuestion + 1) % _questions.length;
  }

  bool isLastQuestion() {
    return _activeQuestion == _questions.length - 1;
  }

  void resetQuiz() {
    _activeQuestion = 0;
  }
}