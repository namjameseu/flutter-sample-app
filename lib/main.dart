import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    debugPrint(questionIndex as String?);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MYSHORE',
            style: TextStyle(color: Colors.blue),
          ),
          backgroundColor: Colors.white,
          bottom: PreferredSize(preferredSize:  const Size.fromHeight(1.0), 
          child: Container(
            decoration: const BoxDecoration(border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1.0
              )
            )),
          ),),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                Text('Welcome to MYSHORE APP')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
