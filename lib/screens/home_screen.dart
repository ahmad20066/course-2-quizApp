import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Map
  List questions = [
    {
      'question': 'How many types of widgets are there in flutter?',
      'answers': [
        {'answerText': '3', 'score': 0},
        {'answerText': '1', 'score': 0},
        {'answerText': '4', 'score': 0},
        {'answerText': '2', 'score': 1}
      ]
    },
    {
      'question': 'Which of the following is an invisible widget?',
      'answers': [
        {'answerText': 'Container', 'score': 0},
        {'answerText': 'TextButton', 'score': 0},
        {'answerText': 'Column', 'score': 1},
        {'answerText': 'Icon', 'score': 0}
      ]
    },
    {
      'question':
          'Which property is used to create a white space arround a Container?',
      'answers': [
        {'answerText': 'margin', 'score': 1},
        {'answerText': 'padding', 'score': 0},
        {'answerText': 'border', 'score': 0},
        {'answerText': 'non of the above', 'score': 0}
      ]
    },
    {
      'question':
          'Which Widget is used to make a child widget align in the center?',
      'answers': [
        {'answerText': 'Center', 'score': 1},
        {'answerText': 'Padding', 'score': 0},
        {'answerText': 'Container', 'score': 0},
        {'answerText': 'both a and b', 'score': 0}
      ]
    },
    {
      'question':
          'Which of the following is used to align children vertically in a Column?',
      'answers': [
        {'answerText': 'crossAxisAlignment', 'score': 0},
        {'answerText': 'Align', 'score': 0},
        {'answerText': 'mainAxisAlignment', 'score': 1},
        {'answerText': 'non of the above', 'score': 0}
      ]
    },
    {
      'question':
          'Which of the following is used to align children horizontally in a Column?',
      'answers': [
        {'answerText': 'crossAxisAlignment', 'score': 1},
        {'answerText': 'Align', 'score': 0},
        {'answerText': 'mainAxisAlignment', 'score': 0},
        {'answerText': 'non of the above', 'score': 0}
      ]
    },
    {
      'question': 'Can you use both color and decoration in a container?',
      'answers': [
        {'answerText': 'Yes', 'score': 0},
        {'answerText': 'No', 'score': 1},
      ]
    },
    {
      'question':
          'Which method is used to navigate to another screen using its name?',
      'answers': [
        {'answerText': 'pushNamed', 'score': 0},
        {'answerText': 'pop', 'score': 0},
        {'answerText': 'popUntil', 'score': 1},
        {'answerText': 'push', 'score': 0}
      ]
    },
  ];

  int currentIndex = 0;

  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Column(
        children: [
          QuestionWidget(), //question
          ...questions[currentIndex]['answers'].map((element) {
            return AnswerWidget();
          }).toList(), //answers
          TextButton(
              onPressed: () {
                setState(() {
                  currentIndex++;
                });

                print(currentIndex);
              },
              child: Text("answer"))
        ],
      ),
    );
  }
}
