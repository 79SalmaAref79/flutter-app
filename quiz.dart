import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
 class Quiz extends StatelessWidget{
   final List<Map<String,Object>>questions;
   final Function answerquestion;
   final int questionIndex;
   Quiz({ @required this.questions,
     @required this.answerquestion,
     @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      children: <Widget>[
        Question(questions[questionIndex]['questiontext']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(()=>answerquestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }

 }