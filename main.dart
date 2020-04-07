
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questiontext': 'what is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 3},
        {'text': 'White', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Black', 'score': 4}
      ]
    },
    {
      'questiontext': 'what is your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 4},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Horse', 'score': 2},
        {'text': 'Dog', 'score': 3}
      ]
    },
    {
      'questiontext': 'what is your favorite Dish',
      'answers': [{'text':'Pizza','score': 3},
        { 'text':'chicken','score': 2},
        { 'text':'Beans','score': 1},
        { 'text':'cheese','score': 4}]
    },
  ];
  var questionindex = 0;
  var _totalscore=0;
  void resetQuiz(){
    setState(() {
      questionindex = 0;
      _totalscore=0;
    });

  }
  void answerquestion(int score) {
    _totalscore += score;
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
    if (questionindex > _questions.length) {
      print('We Have More Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: questionindex < _questions.length
            ? Quiz(
          questions: _questions,
          answerquestion: answerquestion,
          questionIndex: questionindex,
        )
            : Result(_totalscore,resetQuiz),
      ),
    );
  }
}
