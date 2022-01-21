import 'package:flutter/material.dart';
import 'package:popquiz/pages/final/final_question.dart';
import 'package:popquiz/pages/questions/questio_five.dart';
import 'package:popquiz/pages/questions/question_four.dart';
import 'package:popquiz/pages/questions/question_one.dart';
import 'package:popquiz/pages/questions/question_three.dart';
import 'package:popquiz/pages/questions/question_two.dart';
import 'package:popquiz/pages/start/start_page.dart';
import 'pages/start/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        '/startPage':(context) => StartPage(),
        '/questionOne':(context) => QuestionOne(),
        '/questionTwo':(context) => QuestionTwo(),
        '/questionThree':(context) => QuestionThree(),
        '/questionFour':(context) => QuestionFour(),
        '/questionFive':(context) => QuestionFive(),
        '/finalQuestion':(context) => FinalQuestion(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
