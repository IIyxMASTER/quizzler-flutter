import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final Function onClick;

  ReusableCard({@required this.backgroundColor, this.child, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
