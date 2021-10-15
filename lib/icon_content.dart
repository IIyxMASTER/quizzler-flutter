
import 'package:flutter/material.dart';

import 'constants.dart';



class IconContent extends StatelessWidget {

  final IconData iconData;
  final String iconText;

  IconContent({@required this.iconData, @required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconText,
          style: kLabelTextStyle
        ),
      ],
    );
  }
}
