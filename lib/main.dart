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
                Text(
                  questions[questionIndex],
                  style: const TextStyle(fontSize: 35),
                ),
                const SizedBox(height: 5),
                // Add a SizedBox to create space

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
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                  child: const Text('Answer 2',
                      style: TextStyle(color: Colors.black)),
                ),
                FilledButton(
                  onPressed: answerQuestion,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                  child: const Text('Answer 3',
                      style: TextStyle(color: Colors.black)),
                ),
                Column(
                  children: [
                     Container(
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const FilledButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    child: Text(
                      'Next Question',
                      style: TextStyle(color: Colors.white),
                    ), 
                  ),
                ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
