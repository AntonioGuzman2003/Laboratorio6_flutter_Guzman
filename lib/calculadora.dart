import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'colors.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = "0";
  String operacion = "CALCULADORA";

  @override
  Widget build(BuildContext context) {
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      operacion,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: colorInput,
                        fontSize: 32.0,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      result,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: isDark ? colorDarkResult : colorResult,
                        fontSize: 60.0,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          buildInputButton(context, "7"),
                          buildInputButton(context, "8"),
                          buildInputButton(context, "9"),
                          buildInputButton(context, "/"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          buildInputButton(context, "4"),
                          buildInputButton(context, "5"),
                          buildInputButton(context, "6"),
                          buildInputButton(context, "X"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          buildInputButton(context, "1"),
                          buildInputButton(context, "2"),
                          buildInputButton(context, "3"),
                          buildInputButton(context, "-"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          buildInputButton(context, "C"),
                          buildInputButton(context, "0"),
                          buildInputButton(context, "="),
                          buildInputButton(context, "+"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputButton(BuildContext context, String buttonText) {
    return Expanded(
      child: Padding(
                padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15.0),
              
            ),
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 24.0,color: colorInput),
            ),
          ),
        ),
      ),
    );
  }
}
