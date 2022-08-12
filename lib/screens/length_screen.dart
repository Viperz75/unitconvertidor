import 'package:flutter/material.dart';
import 'package:uni_convertido/constants.dart';
import 'package:uni_convertido/conversion_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:uni_convertido/components/bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConversionScreen extends StatefulWidget {
  const ConversionScreen({Key? key}) : super(key: key);

  @override
  State<ConversionScreen> createState() => _ConversionScreenState();
}

class _ConversionScreenState extends State<ConversionScreen> {
  String selectedConversion = 'Inch';
  String selectedConversion2 = 'Inch';
  late double _numbers;
  late double result = 0;

  DropdownButton<dynamic> androidDropdown1() {
    List<DropdownMenuItem> dropdownItems = [];

    for (String conversions in conversionList) {
      var newItem = DropdownMenuItem(
        child: Text(
          conversions,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        value: conversions,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton(
      value: selectedConversion,
      items: dropdownItems,
      onChanged: (value) {
        setState(
              () {
            selectedConversion = value.toString();
          },
        );
      },
    );
  }

  CupertinoPicker iosPicker1() {
    List<Widget> widgetItems = [];

    for (String conversions in conversionList) {
      widgetItems.add(Text(conversions));
    }

    return CupertinoPicker(
      backgroundColor: Colors.white,
      itemExtent: 32.8,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: widgetItems,
    );
  }

  //*******************************Picker 2*************************************

  DropdownButton<dynamic> androidDropdown2() {
    List<DropdownMenuItem> dropdownItems = [];

    for (String conversions in conversionList) {
      var newItem = DropdownMenuItem(
        child: Text(
          conversions,
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        value: conversions,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton(
      value: selectedConversion2,
      items: dropdownItems,
      onChanged: (value) {
        setState(
              () {
            selectedConversion2 = value.toString();
          },
        );
      },
    );
  }

  CupertinoPicker iosPicker2() {
    List<Widget> widgetItems = [];

    for (String conversions in conversionList) {
      widgetItems.add(Text(conversions));
    }

    return CupertinoPicker(
      backgroundColor: Colors.white,
      itemExtent: 32.8,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: widgetItems,
    );
  }

  //*******************************Conversions**********************************
  void conversion() {
    if (selectedConversion == selectedConversion2) {
      result = _numbers;
    } else if (selectedConversion == 'Inch' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 2.54;
      // print(result);
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Inch') {
      result = _numbers / 2.54;
    } else if (selectedConversion == 'Feet' && selectedConversion2 == 'Meter') {
      result = _numbers * 3.281;
    } else if (selectedConversion == 'Meter' && selectedConversion2 == 'Feet') {
      result = _numbers / 3.281;
    } else if (selectedConversion == 'Yard' && selectedConversion2 == 'Meter') {
      result = _numbers * 1.094;
    } else if (selectedConversion == 'Meter' && selectedConversion2 == 'Yard') {
      result = _numbers / 1.094;
    } else if (selectedConversion == 'Miles' && selectedConversion2 == 'Km') {
      result = _numbers * 1.609;
    } else if (selectedConversion == 'Km' && selectedConversion2 == 'Miles') {
      result = _numbers / 1.609;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Meter') {
      result = _numbers * 1852;
    } else if (selectedConversion == 'Meter' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers / 1852;
    } else if (selectedConversion == 'Parsec' && selectedConversion2 == 'Km') {
      result = _numbers * 3.086e+13;
    } else if (selectedConversion == 'Km' && selectedConversion2 == 'Parsec') {
      result = _numbers / 3.086e+13;
    } else if (selectedConversion == 'Feet' && selectedConversion2 == 'Inch') {
      result = _numbers * 12;
    } else if (selectedConversion == 'Inch' && selectedConversion2 == 'Feet') {
      result = _numbers / 12;
    } else if (selectedConversion == 'Feet' && selectedConversion2 == 'Yard') {
      result = _numbers / 3;
    } else if (selectedConversion == 'Yard' && selectedConversion2 == 'Feet') {
      result = _numbers * 3;
    } else if (selectedConversion == 'Feet' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 30.48;
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Feet') {
      result = _numbers / 30.48;
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Meter') {
      result = _numbers / 100;
    } else if (selectedConversion == 'Meter' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 100;
    } else if (selectedConversion == 'Meter' && selectedConversion2 == 'Km') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Km' && selectedConversion2 == 'Meter') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Feet' && selectedConversion2 == 'Meter') {
      result = _numbers * 3.2808399;
    } else if (selectedConversion == 'Meter' && selectedConversion2 == 'Feet') {
      result = _numbers / 3.2808399;
    } else if (selectedConversion == 'Inch' && selectedConversion2 == 'Meter') {
      result = _numbers / 39.37;
    } else if (selectedConversion == 'Meter' && selectedConversion2 == 'Inch') {
      result = _numbers * 39.37;
    } else if (selectedConversion == 'Inch' && selectedConversion2 == 'Yard') {
      result = _numbers / 36;
    } else if (selectedConversion == 'Yard' && selectedConversion2 == 'Inch') {
      result = _numbers * 36;
    } else if (selectedConversion == 'Inch' && selectedConversion2 == 'Miles') {
      result = _numbers / 63360;
    } else if (selectedConversion == 'Miles' && selectedConversion2 == 'Inch') {
      result = _numbers * 63360;
    } else if (selectedConversion == 'Inch' && selectedConversion2 == 'Km') {
      result = _numbers / 39370;
    } else if (selectedConversion == 'Km' && selectedConversion2 == 'Inch') {
      result = _numbers * 39370;
    } else if (selectedConversion == 'Inch' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers / 72910;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Inch') {
      result = _numbers * 72910;
    } else if (selectedConversion == 'Inch' &&
        selectedConversion2 == 'Parsec') {
      result = _numbers / 1.215e+18;
    } else if (selectedConversion == 'Parsec' &&
        selectedConversion2 == 'Inch') {
      result = _numbers * 1.215e+18;
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Yard') {
      result = _numbers / 91.44;
    } else if (selectedConversion == 'Yard' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 91.44;
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Miles') {
      result = _numbers / 160900;
    } else if (selectedConversion == 'Miles' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 160900;
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Km') {
      result = _numbers / 100000;
    } else if (selectedConversion == 'Km' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 100000;
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers / 185200;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 185200;
    } else if (selectedConversion == 'Centimeter' &&
        selectedConversion2 == 'Parsec') {
      result = _numbers / 3.086e+18;
    } else if (selectedConversion == 'Parsec' &&
        selectedConversion2 == 'Centimeter') {
      result = _numbers * 3.086e+18;
    } else if (selectedConversion == 'Feet' && selectedConversion2 == 'Yard') {
      result = _numbers / 3;
    } else if (selectedConversion == 'Yard' && selectedConversion2 == 'Feet') {
      result = _numbers * 3;
    } else if (selectedConversion == 'Feet' && selectedConversion2 == 'Miles') {
      result = _numbers / 5280;
    } else if (selectedConversion == 'Miles' && selectedConversion2 == 'Feet') {
      result = _numbers * 5280;
    } else if (selectedConversion == 'Feet' && selectedConversion2 == 'Km') {
      result = _numbers / 3281;
    } else if (selectedConversion == 'Km' && selectedConversion2 == 'Feet') {
      result = _numbers * 3281;
    } else if (selectedConversion == 'Feet' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers / 6076;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Feet') {
      result = _numbers * 6076;
    } else if (selectedConversion == 'Feet' &&
        selectedConversion2 == 'Parsec') {
      result = _numbers / 1.012e+17;
    } else if (selectedConversion == 'Parsec' &&
        selectedConversion2 == 'Feet') {
      result = _numbers * 1.012e+17;
    } else if (selectedConversion == 'Meter' &&
        selectedConversion2 == 'Miles') {
      result = _numbers / 1609;
    } else if (selectedConversion == 'Miles' &&
        selectedConversion2 == 'Meter') {
      result = _numbers * 1609;
    } else if (selectedConversion == 'Meter' &&
        selectedConversion2 == 'Parsec') {
      result = _numbers / 3.086e+16;
    } else if (selectedConversion == 'Parsec' &&
        selectedConversion2 == 'Meter') {
      result = _numbers * 3.086e+16;
    } else if (selectedConversion == 'Yard' && selectedConversion2 == 'Miles') {
      result = _numbers / 1760;
    } else if (selectedConversion == 'Miles' && selectedConversion2 == 'Yard') {
      result = _numbers * 1760;
    } else if (selectedConversion == 'Yard' && selectedConversion2 == 'Km') {
      result = _numbers / 1094;
    } else if (selectedConversion == 'Km' && selectedConversion2 == 'Yard') {
      result = _numbers * 1094;
    } else if (selectedConversion == 'Yard' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers / 2025;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Yard') {
      result = _numbers * 2025;
    } else if (selectedConversion == 'Yard' &&
        selectedConversion2 == 'Parsec') {
      result = _numbers / 3.375e+16;
    } else if (selectedConversion2 == 'Parsec' &&
        selectedConversion2 == 'Yard') {
      result = _numbers * 3.375e+16;
    } else if (selectedConversion == 'Miles' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers / 1.151;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Miles') {
      result = _numbers * 1.151;
    } else if (selectedConversion == 'Miles' &&
        selectedConversion2 == 'Parsec') {
      result = _numbers / 1.917e+13;
    } else if (selectedConversion == 'Parsec' &&
        selectedConversion2 == 'Miles') {
      result = _numbers * 1.917e+13;
    } else if (selectedConversion == 'Km' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers / 1.852;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Km') {
      result = _numbers * 1.852;
    } else if (selectedConversion == 'Nautical Mile' &&
        selectedConversion2 == 'Parsec') {
      result = _numbers / 1.666e+13;
    } else if (selectedConversion == 'Parsec' &&
        selectedConversion2 == 'Nautical Mile') {
      result = _numbers * 1.666e+13;
    } else {
      result = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length Convertidor'),
        backgroundColor: Color(0xff6b02a8),
      ),
      drawer: const Bar(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                      decoration: kTextFieldInputDecoration,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        var number = double.tryParse(value);
                        if (number != null) {
                          setState(() {
                            _numbers = number;
                            conversion();
                          });
                        } else {
                          setState(() {
                            result = 0;
                          });
                        }
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Platform.isIOS ? iosPicker1() : androidDropdown1(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 80.0),
              child: Icon(
                FontAwesomeIcons.arrowDown,
                size: 45.0,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 30.0),
                    child: Platform.isIOS ? iosPicker2() : androidDropdown2(),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
                padding: EdgeInsets.only(bottom: 180.0),
                child: Text(
                  '$result',
                  style: kResultText,
                )),
          ),
        ],
      ),
    );
  }
}
