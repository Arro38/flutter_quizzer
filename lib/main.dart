// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_quizzer/quizz.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme().copyWith(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.grey[900],
        body: Quizz(),
      ),
    );
  }
}
