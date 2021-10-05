import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0E0F20),
        scaffoldBackgroundColor: Color(0xFF0A0F20),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
          ),
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
        //#303030

        //#0E0F20
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
