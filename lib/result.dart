import 'package:flutter/material.dart';



class Result extends StatelessWidget {
  final int resultScore;

final VoidCallback resetHandler;

  Result(this.resultScore,this.resetHandler);
  
String get resultPhrase{
  var resultText ;
  if(resultScore<=8){
    resultText = 'you are awesome';
  }else if(resultScore<=12){
    resultText = 'pretty likaable';
  }else if (resultScore<=16){
resultText = 'you are  strange?';

  }else{
    resultText = 'bad';
  }
  
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column
    (children: <Widget>[

    
    Text(
     resultPhrase,
      style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,
    ),
    TextButton(
      child: Text('Restart quiz') ,  
    onPressed: resetHandler,
    ),
    ]
        ),
        );
  }
}