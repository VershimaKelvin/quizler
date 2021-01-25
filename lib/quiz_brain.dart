import 'package:flutter/cupertino.dart';
import 'package:quizler/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs',
        questionAnswer: false),
    Question(
        questionText: 'Apparently, one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green', questionAnswer: true)
  ];

  int questionNumber() {
    return _questionNumber;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool finished(BuildContext context) {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else
      return false;
    //print(_questionBank.length);
  }

  void reset() {
    _questionNumber = 0;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
