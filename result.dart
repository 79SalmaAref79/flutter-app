import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandler;
  Result(this.resultscore,this.resetHandler);
  String get resultPhrase{
    var resulttext;
    if(resultscore<=3){
      resulttext='You are awesome and innocent !';
    }
    else if(resultscore<=6){
      resulttext='You are likeable!';
    }
    else if(resultscore<=9){
      resulttext='You are ... strange!';
    }
    else
      resulttext='You are So bad !';
    return resulttext;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
      resultPhrase,textAlign: TextAlign.center,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.blue,
      ),
    ),
            ),
            FlatButton(
              child: Text('Restart The Quiz',style: TextStyle(color: Colors.red,
                  fontSize: 30),
              ),onPressed: resetHandler,
            )
          ],
        ));
  }
}
