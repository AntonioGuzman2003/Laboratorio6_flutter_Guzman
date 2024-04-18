import 'package:flutter/material.dart';

import 'calculadora.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: CalculatorPage(),
    );
  }
}