import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizzler/reusable_card.dart';
import 'package:quizzler/icon_content.dart';

const bottomContainerHeight = 80.0;
const defaultCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Colors.purple;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor: defaultCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: defaultCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      iconText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            backgroundColor: defaultCardColor,
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor: defaultCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: defaultCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
