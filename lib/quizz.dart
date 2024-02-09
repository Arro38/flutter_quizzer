import 'package:flutter/material.dart';
import 'package:flutter_quizzer/quizzbrain.dart';

// final List<String> list_questions = ["1 . TRUE ", "2 . FALSE", "3. TRUE"];
// final List<bool> list_reponses = [true, false, true];
final QuizzBrain qb = QuizzBrain();

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<Icon> list_icon = [];

  handleClick(bool reponse) {
    setState(() {
      if (reponse == qb.getReponse()) {
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
      qb.nextQuestion(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
        Expanded(
          flex: 5,
          child: Center(child: Text(qb.getQuestionText())),
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
