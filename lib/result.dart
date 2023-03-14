import 'dart:developer';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final VoidCallback reset;

  Result({required this.resultScore, required this.reset});

  String get resultPhrase{
    String? resultText;
    if(resultScore <= 4){
      resultText = "You are the best!";
    }else if(resultScore <= 7){
      resultText = "You are ok! Normal human";
    }else{
      resultText = "You are crazy! You are not human!!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase , style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),),
          OutlinedButton(
            onPressed: reset,
            child:Text("Reset", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w900),),
            style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.indigo)),
          ),
        ],
      ),
    );
  }
}
