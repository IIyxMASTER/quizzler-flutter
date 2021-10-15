import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizzler/reusable_card.dart';
import 'package:quizzler/icon_content.dart';

import 'constants.dart';
import 'gender.dart';
import 'round_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  int height = 180;
  int weight = 60;
  int age  = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(kTitleText)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    onClick: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    onClick: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
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
            backgroundColor: kActiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      ' cm',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    thumbColor: kPinkColor,
                    overlayColor: kPinkColor.withOpacity(0.16),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.toInt();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/result');
            },
            child: Container(
              child: Center(child: Text('CALCULATE', style: kLargeButtonTextStyle,)),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 10),
              height: kBottomContainerHeight,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
