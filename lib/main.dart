import 'package:flutter/material.dart';
import 'package:quizzler/results_page.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/input',
      routes: {
        '/result' : (context) => ResultPage(),
        '/input' : (context) => InputPage()
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0F20),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF1D1E33),
        ),
      ),
      home: InputPage(),
    );
  }
}


