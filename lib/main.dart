// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text("QUESTION 1"),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
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
                  onPressed: () {},
                  child: Center(
                    child: Text("FAUX"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
