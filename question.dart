import 'package:flutter/material.dart';
class Question extends StatelessWidget{
  String questiontext;
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(questiontext,
      style: TextStyle(fontSize: 33),
      textAlign: TextAlign.center,),
    );
  }

}