import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  int _answersIndex = 0;
  int _totalScore = 0;

  void _answers(int score) {
    _totalScore += score;
    setState((){
      _answersIndex++;
    });
  }

  void _reset(){
    setState(() {
      _answersIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context){

    var questions = [{
      "questionText": "What car is your favorite?",
      "answers": [
        {"text":"BMW", "score": 3}, 
        {"text":"Mercedes", "score": 2}, 
        {"text": "Lamborghiny", "score": 5}, 
        {"text":"Ferrari", "score": 4}, 
        {"text":"Maserati", "score":1}],
    },
      {
        "questionText": "What city is your favorite?",
        "answers": [
          {"text":"Dubai", "score": 3},
          {"text":"Miami", "score": 2},
          {"text": "Paris", "score": 5},
          {"text":"Marocco", "score": 4},
          {"text":"San-Fransisco", "score":1}],
      },
      {
        "questionText": "What is your hobby?",
        "answers": [
          {"text":"Training", "score": 1},
          {"text":"Coding", "score": 2},
          {"text": "Traveling", "score": 3},
          {"text":"Chilling", "score": 5},
          {"text":"Singing", "score":4}],
      }];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text("Personality quiz", style: TextStyle(color: Colors.black ,fontSize: 20,fontWeight: FontWeight.bold),),
        // titleTextStyle: TextStyle(color: Colors.black),
        centerTitle: true,),
      body: _answersIndex < questions.length ? Quiz(
          questions: questions,
          answersIndex: _answersIndex,
          answers: _answers) : Result(resultScore: _totalScore, reset: _reset),
      backgroundColor: Colors.grey,
    ),
    );
  }
}