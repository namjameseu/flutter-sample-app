import 'package:flutter/material.dart';

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
      'What\'s youre favorite animal?'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My First App',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'The question!',
                  style: TextStyle(fontSize: 35),
                ),
                FilledButton(
                  onPressed: answerQuestion,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                  child: const Text(
                    'Answer 1',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                FilledButton(
                    onPressed: answerQuestion,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber)),
                    child: const Text('Answer 2',
                        style: TextStyle(color: Colors.black))),
                FilledButton(
                    onPressed: answerQuestion,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber)),
                    child: const Text('Answer 3',
                        style: TextStyle(color: Colors.black))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
