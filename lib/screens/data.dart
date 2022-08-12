import 'package:uni_convertido/components/bar.dart';
import 'package:flutter/material.dart';
import 'package:uni_convertido/lists/data_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uni_convertido/constants.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  String selectedConversion = 'Bytes';
  String selectedConversion2 = 'Bytes';
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

  void conversion() {
    if (selectedConversion == selectedConversion2) {
      result = _numbers;
    } else if (selectedConversion == 'Bytes' &&
        selectedConversion2 == 'Kilobyte') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Kilobyte' &&
        selectedConversion2 == 'Bytes') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Bytes' &&
        selectedConversion2 == 'Megabyte') {
      result = _numbers / 1e+6;
    } else if (selectedConversion == 'Megabyte' &&
        selectedConversion2 == 'Bytes') {
      result = _numbers * 1e+6;
    } else if (selectedConversion == 'Bytes' && selectedConversion2 == 'Bits') {
      result = _numbers * 8;
    } else if (selectedConversion == 'Bits' && selectedConversion2 == 'Bytes') {
      result = _numbers / 8;
    } else if (selectedConversion == 'Bytes' &&
        selectedConversion2 == 'Gigabyte') {
      result = _numbers / 1e+9;
    } else if (selectedConversion == 'Gigabyte' &&
        selectedConversion2 == 'Bytes') {
      result = _numbers * 1e+9;
    } else if (selectedConversion == 'Bytes' &&
        selectedConversion2 == 'Petabyte') {
      result = _numbers / 1e+15;
    } else if (selectedConversion == 'Petabyte' &&
        selectedConversion2 == 'Bytes') {
      result = _numbers * 1e+15;
    } else if (selectedConversion == 'Bytes' &&
        selectedConversion2 == 'Pebibyte') {
      result = _numbers / 1.126e+15;
    } else if (selectedConversion == 'Pebibyte' &&
        selectedConversion2 == 'Bytes') {
      result = _numbers * 1.126e+15;
    } else if (selectedConversion == 'Kilobyte' &&
        selectedConversion2 == 'Megabyte') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Megabyte' &&
        selectedConversion2 == 'Kilobyte') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Kilobyte' &&
        selectedConversion2 == 'Bits') {
      result = _numbers * 8000;
    } else if (selectedConversion == 'Bits' &&
        selectedConversion2 == 'Kilobyte') {
      result = _numbers / 8000;
    } else if (selectedConversion == 'Kilobyte' &&
        selectedConversion2 == 'Gigabyte') {
      result = _numbers / 1e+6;
    } else if (selectedConversion == 'Gigabyte' &&
        selectedConversion2 == 'Kilobyte') {
      result = _numbers * 1e+6;
    } else if (selectedConversion == 'Kilobyte' &&
        selectedConversion2 == 'Petabyte') {
      result = _numbers / 1e+12;
    } else if (selectedConversion == 'Petabyte' &&
        selectedConversion2 == 'Kilobyte') {
      result = _numbers * 1e+12;
    } else if (selectedConversion == 'Kilobyte' &&
        selectedConversion2 == 'Pebibyte') {
      result = _numbers / 1.126e+12;
    } else if (selectedConversion == 'Pebibyte' &&
        selectedConversion2 == 'Kilobyte') {
      result = _numbers * 1.126e+12;
    } else if (selectedConversion == 'Megabyte' &&
        selectedConversion2 == 'Bits') {
      result = _numbers * 8e+6;
    } else if (selectedConversion == 'Bits' &&
        selectedConversion2 == 'Megabyte') {
      result = _numbers / 8e+6;
    } else if (selectedConversion == 'Megabyte' &&
        selectedConversion2 == 'Gigabyte') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Gigabyte' &&
        selectedConversion2 == 'Megabyte') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Megabyte' &&
        selectedConversion2 == 'Petabyte') {
      result = _numbers / 1e+9;
    } else if (selectedConversion == 'Petabyte' &&
        selectedConversion2 == 'Megabyte') {
      result = _numbers * 1e+9;
    } else if (selectedConversion == 'Megabyte' &&
        selectedConversion2 == 'Pebibyte') {
      result = _numbers / 1.126e+9;
    } else if (selectedConversion == 'Pebibyte' &&
        selectedConversion2 == 'Megabyte') {
      result = _numbers * 1.126e+9;
    } else if (selectedConversion == 'Bits' &&
        selectedConversion2 == 'Gigabyte') {
      result = _numbers / 8e+9;
    } else if (selectedConversion == 'Gigabyte' &&
        selectedConversion2 == 'Bits') {
      result = _numbers * 8e+9;
    } else if (selectedConversion == 'Bits' &&
        selectedConversion2 == 'Petabyte') {
      result = _numbers / 8e+15;
    } else if (selectedConversion == 'Petabyte' &&
        selectedConversion2 == 'Bits') {
      result = _numbers * 8e+15;
    } else if (selectedConversion == 'Bits' &&
        selectedConversion2 == 'Pebibyte') {
      result = _numbers / 9.007e+15;
    } else if (selectedConversion == 'Pebibyte' &&
        selectedConversion2 == 'Bits') {
      result = _numbers * 9.007e+15;
    } else if (selectedConversion == 'Gigabyte' &&
        selectedConversion2 == 'Petabyte') {
      result = _numbers / 1e+6;
    } else if (selectedConversion == 'Petabyte' &&
        selectedConversion2 == 'Gigabyte') {
      result = _numbers * 1e+6;
    } else if (selectedConversion == 'Gigabyte' &&
        selectedConversion2 == 'Pebibyte') {
      result = _numbers / 1.126e+6;
    } else if (selectedConversion == 'Pebibyte' &&
        selectedConversion2 == 'Gigabyte') {
      result = _numbers * 1.126e+6;
    } else if (selectedConversion == 'Petabyte' &&
        selectedConversion2 == 'Pebibyte') {
      result = _numbers / 1.126;
    } else if (selectedConversion == 'Pebibyte' &&
        selectedConversion2 == 'Petabyte') {
      result = _numbers * 1.126;
    } else {
      result = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Convertidor'),
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
