import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  RoundIconButton({@required this.onPressed,@required  this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF8D8E98),
      onPressed: onPressed,
      child: Icon(icon, color: Colors.white,),
    );
  }
}
