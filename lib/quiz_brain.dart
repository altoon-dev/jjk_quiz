import 'questions.dart';
import 'package:flutter/material.dart';



class QuizBrain{
  int _questionNumber = 0;

  List <Question> _questionBank= [
    Question(q:'Itadori is the main character in JJK?', a: true),
    Question(q: 'The strongest Jujutsu Sorcerer is Gojou', a: false),
    Question(q: 'Maki have strongest Cursed Technique', a: false),
    Question(q: 'Itadori\'s mother is Getou', a: true),
    Question(q: 'Mahito\'s Cursed Technique is Soul Transformation', a: false),
    Question(q: 'Sukuna have 2 arms?', a: false),
    Question(q: 'Megumi is 15 years old?', a: true),
    Question(q: 'Megumi became the head of the zenin clan?', a: true),
    Question(q: 'Toji is the father of Maki and Mai', a: false),
    Question(q: 'Yuta is the best character in JJK', a: true),
    Question(q: 'Itadori have siblings?', a: true),
    Question(q: 'Nobara is hotter than Maki?', a: true),
    Question(q: 'Itadori killed 10k people?', a: false),
    Question(q: 'Mahito is alive?', a: false),
    Question(q: 'Gojou have the largest supply of cursed energy', a: false)

  ];
  void nextQuestion(){
    if (_questionNumber <_questionBank.length-1){
      _questionNumber++;
    }
  }


  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionBool() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber > _questionBank.length-1){
      print('now its trueee');
      return true;
    }else{
      print('now its falssee');
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}