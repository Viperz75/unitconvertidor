import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 25.0
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFe8e8e8),
  hintText: 'Value',
  hintStyle: TextStyle(color: Colors.black),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none
  ),
);

const kAppBarTextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.white
);

const kDrawerText = TextStyle(
    fontSize: 18.0,
    color: Colors.white
);

const kDrawerTexts = TextStyle(
  fontSize: 15.0,
  color: Colors.white
);

const kResultText = TextStyle(
  fontSize: 30.0
);

const kHomeButtonText = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF6b02a8)
);

const kDetailText = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: Color(0xff66a1ff)
);

const kDetailTextPara = TextStyle(
  fontSize: 23.0,
  color: Colors.black,
  height: 1.5
);

const kNameText = TextStyle(
  fontSize: 27.0,
  color: Colors.blueAccent,
  fontWeight: FontWeight.bold
);

const kNameTexts = TextStyle(
    fontSize: 25.0,
    color: Colors.blueAccent,
    fontWeight: FontWeight.bold
);

const kAbout = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold
);

const kCompanyText = TextStyle(
  fontSize: 23.0
);