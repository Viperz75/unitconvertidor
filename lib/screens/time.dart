import 'package:uni_convertido/components/bar.dart';
import 'package:flutter/material.dart';
import 'package:uni_convertido/constants.dart';
import 'dart:io' show Platform;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:uni_convertido/lists/time_list.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  String selectedConversion = 'Nanosecond';
  String selectedConversion2 = 'Nanosecond';
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
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers / 1e+6;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 1e+6;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Second') {
      result = _numbers / 1e+9;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 1e+9;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Minute') {
      result = _numbers / 6e+10;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 6e+10;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Hour') {
      result = _numbers / 3.6e+12;
    } else if (selectedConversion == 'Hour' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 3.6e+12;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Day') {
      result = _numbers / 8.64e+13;
    } else if (selectedConversion == 'Day' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 8.64e+13;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Week') {
      result = _numbers / 6.048e+14;
    } else if (selectedConversion == 'Week' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 6.048e+14;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Month') {
      result = _numbers / 2.628e+15;
    } else if (selectedConversion == 'Month' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 2.628e+15;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Year') {
      result = _numbers / 3.154e+16;
    } else if (selectedConversion == 'Year' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 3.154e+16;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 3.154e+17;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 3.154e+17;
    } else if (selectedConversion == 'Nanosecond' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 3.154e+17;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Nanosecond') {
      result = _numbers * 3.154e+17;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Second') {
      result = _numbers / 1e+6;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 1e+6;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Minute') {
      result = _numbers / 6e+7;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 6e+7;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Hour') {
      result = _numbers / 3.6e+9;
    } else if (selectedConversion == 'Hour' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 3.6e+9;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Day') {
      result = _numbers / 8.64e+10;
    } else if (selectedConversion == 'Day' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 8.64e+10;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Week') {
      result = _numbers / 6.048e+11;
    } else if (selectedConversion == 'Week' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 6.048e+11;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Month') {
      result = _numbers / 2.628e+12;
    } else if (selectedConversion == 'Month' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 2.628e+12;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Year') {
      result = _numbers / 3.154e+13;
    } else if (selectedConversion == 'Year' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 3.154e+13;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 3.154e+14;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 3.154e+14;
    } else if (selectedConversion == 'Microsecond' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 3.154e+15;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Microsecond') {
      result = _numbers * 3.154e+15;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Second') {
      result = _numbers / 1000;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 1000;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Minute') {
      result = _numbers / 60000;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 60000;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Hour') {
      result = _numbers / 3.6e+6;
    } else if (selectedConversion == 'Hour' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 3.6e+6;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Day') {
      result = _numbers / 8.64e+7;
    } else if (selectedConversion == 'Day' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 8.64e+7;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Week') {
      result = _numbers / 6.048e+8;
    } else if (selectedConversion == 'Week' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 6.048e+8;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Month') {
      result = _numbers / 2.628e+9;
    } else if (selectedConversion == 'Month' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 2.628e+9;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Year') {
      result = _numbers / 3.154e+10;
    } else if (selectedConversion == 'Year' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 3.154e+10;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 3.154e+11;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 3.154e+11;
    } else if (selectedConversion == 'Millisecond' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 3.154e+12;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Millisecond') {
      result = _numbers * 3.154e+12;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Minute') {
      result = _numbers / 60;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Second') {
      result = _numbers * 60;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Hour') {
      result = _numbers / 3600;
    } else if (selectedConversion == 'Hour' &&
        selectedConversion2 == 'Second') {
      result = _numbers * 3600;
    } else if (selectedConversion == 'Second' && selectedConversion2 == 'Day') {
      result = _numbers / 86400;
    } else if (selectedConversion == 'Day' && selectedConversion2 == 'Second') {
      result = _numbers * 86400;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Week') {
      result = _numbers / 604800;
    } else if (selectedConversion == 'Week' &&
        selectedConversion2 == 'Second') {
      result = _numbers * 604800;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Month') {
      result = _numbers / 2.628e+6;
    } else if (selectedConversion == 'Month' &&
        selectedConversion2 == 'Second') {
      result = _numbers * 2.628e+6;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Year') {
      result = _numbers / 3.154e+7;
    } else if (selectedConversion == 'Year' &&
        selectedConversion2 == 'Second') {
      result = _numbers * 3.154e+7;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 3.154e+8;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Second') {
      result = _numbers * 3.154e+8;
    } else if (selectedConversion == 'Second' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 3.154e+9;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Second') {
      result = _numbers * 3.154e+9;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Hour') {
      result = _numbers / 60;
    } else if (selectedConversion == 'Hour' &&
        selectedConversion2 == 'Minute') {
      result = _numbers * 60;
    } else if (selectedConversion == 'Minute' && selectedConversion2 == 'Day') {
      result = _numbers / 1440;
    } else if (selectedConversion == 'Day' && selectedConversion2 == 'Minute') {
      result = _numbers * 1440;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Week') {
      result = _numbers / 10080;
    } else if (selectedConversion == 'Week' &&
        selectedConversion2 == 'Minute') {
      result = _numbers * 10080;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Month') {
      result = _numbers / 43800;
    } else if (selectedConversion == 'Month' &&
        selectedConversion2 == 'Minute') {
      result = _numbers * 43800;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Year') {
      result = _numbers / 525600;
    } else if (selectedConversion == 'Year' &&
        selectedConversion2 == 'Minute') {
      result = _numbers * 525600;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 5.256e+6;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Minute') {
      result = _numbers * 5.256e+6;
    } else if (selectedConversion == 'Minute' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 5.256e+7;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Minute') {
      result = _numbers * 5.256e+7;
    } else if (selectedConversion == 'Hour' && selectedConversion2 == 'Day') {
      result = _numbers / 24;
    } else if (selectedConversion == 'Day' && selectedConversion2 == 'Hour') {
      result = _numbers * 24;
    } else if (selectedConversion == 'Hour' && selectedConversion2 == 'Week') {
      result = _numbers / 168;
    } else if (selectedConversion == 'Week' && selectedConversion2 == 'Hour') {
      result = _numbers * 168;
    } else if (selectedConversion == 'Hour' && selectedConversion2 == 'Month') {
      result = _numbers / 730;
    } else if (selectedConversion == 'Month' && selectedConversion2 == 'Hour') {
      result = _numbers * 730;
    } else if (selectedConversion == 'Hour' && selectedConversion2 == 'Year') {
      result = _numbers / 8760;
    } else if (selectedConversion == 'Year' && selectedConversion2 == 'Hour') {
      result = _numbers * 8760;
    } else if (selectedConversion == 'Hour' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 87600;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Hour') {
      result = _numbers * 87600;
    } else if (selectedConversion == 'Hour' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 876000;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Hour') {
      result = _numbers * 876000;
    } else if (selectedConversion == 'Day' && selectedConversion2 == 'Week') {
      result = _numbers / 7;
    } else if (selectedConversion == 'Week' && selectedConversion2 == 'Day') {
      result = _numbers * 7;
    } else if (selectedConversion == 'Day' && selectedConversion2 == 'Month') {
      result = _numbers / 30.417;
    } else if (selectedConversion == 'Month' && selectedConversion2 == 'Day') {
      result = _numbers * 30.417;
    } else if (selectedConversion == 'Day' && selectedConversion2 == 'Year') {
      result = _numbers / 365;
    } else if (selectedConversion == 'Year' && selectedConversion2 == 'Day') {
      result = _numbers * 365;
    } else if (selectedConversion == 'Day' && selectedConversion2 == 'Decade') {
      result = _numbers / 3650;
    } else if (selectedConversion == 'Decade' && selectedConversion2 == 'Day') {
      result = _numbers * 3650;
    } else if (selectedConversion == 'Day' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 36500;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Day') {
      result = _numbers * 36500;
    } else if (selectedConversion == 'Week' && selectedConversion2 == 'Month') {
      result = _numbers / 4.345;
    } else if (selectedConversion == 'Month' && selectedConversion2 == 'Week') {
      result = _numbers * 4.345;
    } else if (selectedConversion == 'Week' && selectedConversion2 == 'Year') {
      result = _numbers / 52.143;
    } else if (selectedConversion == 'Year' && selectedConversion2 == 'Week') {
      result = _numbers * 52.143;
    } else if (selectedConversion == 'Week' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 521.4;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Week') {
      result = _numbers * 521.4;
    } else if (selectedConversion == 'Week' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 5214;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Week') {
      result = _numbers * 5214;
    } else if (selectedConversion == 'Month' && selectedConversion2 == 'Year') {
      result = _numbers / 12;
    } else if (selectedConversion == 'Year' && selectedConversion2 == 'Month') {
      result = _numbers * 12;
    } else if (selectedConversion == 'Month' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 120;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Month') {
      result = _numbers * 120;
    } else if (selectedConversion == 'Month' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 1200;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Month') {
      result = _numbers * 1200;
    } else if (selectedConversion == 'Year' &&
        selectedConversion2 == 'Decade') {
      result = _numbers / 10;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Year') {
      result = _numbers * 10;
    } else if (selectedConversion == 'Year' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 100;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Year') {
      result = _numbers * 100;
    } else if (selectedConversion == 'Decade' &&
        selectedConversion2 == 'Century') {
      result = _numbers / 10;
    } else if (selectedConversion == 'Century' &&
        selectedConversion2 == 'Decade') {
      result = _numbers * 10;
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
