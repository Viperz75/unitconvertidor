import 'package:flutter/material.dart';
import 'package:uni_convertido/constants.dart';

class allUnits extends StatelessWidget {
  allUnits({required this.icon, required this.label, required this.onPressed});

  final icon;
  final label;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 120,
        width: 130,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          child: TextButton.icon(
            icon: Icon(icon, color: Color(0xFF6b02a8), size: 25.0),
            label: Text(label, style: kHomeButtonText),
            onPressed: onPressed,
          ),
          shadowColor: Color(0xff9e7dd2),
        ),
      ),
    );
  }
}
