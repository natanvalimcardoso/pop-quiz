import 'package:flutter/material.dart';
import 'package:popquiz/pages/start/start.dart';
import 'pages/start/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Entrada(),
      debugShowCheckedModeBanner: false,
    );
  }
}
