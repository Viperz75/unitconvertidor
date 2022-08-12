import 'package:uni_convertido/components/bar.dart';
import 'package:flutter/material.dart';
import 'package:uni_convertido/constants.dart';
import 'dart:io' show Platform;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:uni_convertido/lists/volume_list.dart';

class Volume extends StatefulWidget {
  const Volume({Key? key}) : super(key: key);

  @override
  State<Volume> createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  String selectedConversion = 'Liter';
  String selectedConversion2 = 'Liter';
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
      onSelectedItemChanged: (selectedIndex) {},
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
      onSelectedItemChanged: (selectedIndex) {},
      children: widgetItems,
    );
  }

  void conversion() {
    if (selectedConversion == selectedConversion2) {
      result = _numbers;
    } else if (selectedConversion == 'Liter' &&
        selectedConversion2 == 'Milliliter') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Milliliter' &&
        selectedConversion2 == 'Liter') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Liter' &&
        selectedConversion2 == 'Cubic Feet') {
      result = _numbers / 28.317;
    } else if (selectedConversion == 'Cubic Feet' &&
        selectedConversion2 == 'Liter') {
      result = _numbers * 28.317;
    } else if (selectedConversion == 'Liter' &&
        selectedConversion2 == 'Cubic Inch') {
      result = _numbers * 61.024;
    } else if (selectedConversion == 'Cubic Inch' &&
        selectedConversion2 == 'Liter') {
      result = _numbers / 61.024;
    } else if (selectedConversion == 'Milliliter' &&
        selectedConversion2 == 'Cubic Feet') {
      result = _numbers / 28320;
    } else if (selectedConversion == 'Cubic Feet' &&
        selectedConversion2 == 'Milliliter') {
      result = _numbers * 28320;
    } else if (selectedConversion == 'Milliliter' &&
        selectedConversion2 == 'Cubic Inch') {
      result = _numbers / 16.387;
    } else if (selectedConversion == 'Cubic Inch' &&
        selectedConversion2 == 'Milliliter') {
      result = _numbers * 16.387;
    } else if (selectedConversion == 'Cubic Feet' &&
        selectedConversion2 == 'Cubic Inch') {
      result = _numbers * 1728;
    } else if (selectedConversion == 'Cubic Inch' &&
        selectedConversion2 == 'Cubic Feet') {
      result = _numbers / 1728;
    } else {
      result = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volume Convertidor'),
        backgroundColor: const Color(0xff6b02a8),
      ),
      drawer: Bar(),
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
