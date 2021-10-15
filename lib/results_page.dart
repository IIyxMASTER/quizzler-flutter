import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/reusable_card.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              backgroundColor: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('OVERWEIGHT', style: kResultTextStyle,),
                  Text('OVERWEIGHT', style: kResultTextStyle,),
                  Text('OVERWEIGHT', style: kResultTextStyle,),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text('RECALCULATE'),
            ),
          ),
        ],
      ),
    );
  }
}
