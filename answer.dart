import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selecthandeler;
final String answertext;
  Answer(this.selecthandeler,this.answertext);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width:double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answertext),
        onPressed: selecthandeler,
      ),
    );
  }

}