import 'package:flutter/material.dart';
import 'package:flutter_quizzer/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizzBrain {
  List<Question> _questions = [
    Question("1 . TRUE", true),
    Question("2 . FALSE", false),
    Question("3 . TRUE", true),
  ];
  var _questionNumber = 0;

  void nextQuestion(BuildContext context) {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    } else {
      Alert(
        context: context,
        title: "FIN DU QUIZZ",
        desc: "Vous avez terminé le quizz",
        buttons: [
          DialogButton(
            child: Text(
              "COOL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => {
              _questionNumber = 0,
            },
            width: 120,
          )
        ],
      ).show();
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].getQuestionText();
  }

  bool getReponse() {
    return _questions[_questionNumber].getQuestionReponse();
  }
}
