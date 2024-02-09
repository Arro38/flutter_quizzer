import 'package:flutter/material.dart';
import 'package:flutter_quizzer/question.dart';

// final List<String> list_questions = ["1 . TRUE ", "2 . FALSE", "3. TRUE"];
// final List<bool> list_reponses = [true, false, true];

final List<Question> list_questions_reponses = [
  Question(texte: "1 . TRUE", reponse: true),
  Question(texte: "2 . FALSE", reponse: false),
  Question(texte: "3 . TRUE", reponse: true),
];

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<Icon> list_icon = [];
  int current_question_index = 0;

  handleClick(bool reponse) {
    setState(() {
      if (reponse == list_questions_reponses[current_question_index].reponse) {
        list_icon.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        list_icon.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      if (current_question_index == list_questions_reponses.length - 1) {
        current_question_index = 0;
        list_icon = [];
      } else {
        current_question_index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(list_questions_reponses[current_question_index].texte),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                handleClick(true);
              },
              child: Center(
                child: Text("VRAI"),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: Container(
            color: Colors.red,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                handleClick(false);
              },
              child: Center(
                child: Text("FAUX"),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: list_icon,
          ),
        ),
      ]),
    );
  }
}
