import 'package:flutter/material.dart';
import 'package:popquiz/pages/questions/question_one.dart';
import 'package:popquiz/pages/start/start_page.dart';
import 'pages/start/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        '/star':(context) => StartPage(),
        '/questionOne':(context) => QuestionOne(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
