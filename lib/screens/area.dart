import 'package:uni_convertido/components/bar.dart';
import 'package:flutter/material.dart';
import 'package:uni_convertido/constants.dart';
import 'dart:io' show Platform;
import 'package:uni_convertido/lists/area_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Area extends StatefulWidget {
  const Area({Key? key}) : super(key: key);

  @override
  State<Area> createState() => _AreaState();
}

class _AreaState extends State<Area> {
  String selectedConversion = 'Acre';
  String selectedConversion2 = 'Acre';
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
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
      },
      children: widgetItems,
    );
  }

  void conversion() {
    if (selectedConversion == selectedConversion2) {
      result = _numbers;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers * 4047;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Acre') {
      result = _numbers / 4047;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 247.1;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Acre') {
      result = _numbers * 247.1;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 640;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Acre') {
      result = _numbers * 640;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers * 4840;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Acre') {
      result = _numbers / 4840;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers * 43560;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Acre') {
      result = _numbers / 43560;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Square Inch') {
      result = _numbers * 6.273e+6;
    } else if (selectedConversion == 'Square Inch' &&
        selectedConversion2 == 'Acre') {
      result = _numbers / 6.273e+6;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 2.471;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Acre') {
      result = _numbers * 2.471;
    } else if (selectedConversion == 'Acre' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers * 100;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Acre') {
      result = _numbers / 100;
    } else if (selectedConversion == 'Acre' && selectedConversion2 == 'Katha') {
      result = _numbers * 60.5;
    } else if (selectedConversion == 'Katha' && selectedConversion2 == 'Acre') {
      result = _numbers / 60.5;
    } else if (selectedConversion == 'Acre' && selectedConversion2 == 'Bigha') {
      result = _numbers * 3.025;
    } else if (selectedConversion == 'Bigha' && selectedConversion2 == 'Acre') {
      result = _numbers / 3.025;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 1e+6;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers * 1e+6;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 2.59e+6;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers * 2.59e+6;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers * 1.196;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers / 1.196;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers * 10.764;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers / 10.764;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Square Inch') {
      result = _numbers * 1550;
    } else if (selectedConversion == 'Square Inch' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers / 1550;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 10000;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers * 10000;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers / 10000;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers * 10000;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Katha') {
      result = _numbers * 0.0149;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers / 0.0149;
    } else if (selectedConversion == 'Square Meter' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 0.0007;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Square Meter') {
      result = _numbers / 0.0007;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 2.59;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers * 2.59;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers * 1.196e+6;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 1.196e+6;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers * 1.076e+7;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 1.076e+7;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Square Inch') {
      result = _numbers * 1.55e+9;
    } else if (selectedConversion == 'Square Inch' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 1.55e+9;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers * 100;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 100;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers * 24710.5381;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 24710.5381;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Katha') {
      result = _numbers * 14949.8756;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 14949.8756;
    } else if (selectedConversion == 'Square Kilometer' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 747.4938;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Square Kilometer') {
      result = _numbers / 747.4938;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers * 3.098e+6;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 3.098e+6;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers * 2.788e+7;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 2.788e+7;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Square Inch') {
      result = _numbers * 4.014e+9;
    } else if (selectedConversion == 'Square Inch' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 4.014e+9;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers * 259;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 259;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers * 64000;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 64000;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Katha') {
      result = _numbers * 38720;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 38720;
    } else if (selectedConversion == 'Square Mile' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 1936;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Square Mile') {
      result = _numbers / 1936;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers * 9;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers / 9;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Square Inch') {
      result = _numbers * 1296;
    } else if (selectedConversion == 'Square Inch' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers / 1296;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 11960;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers * 11960;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Shontangsho') {
      result = _numbers * 0.0207;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers / 0.0207;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Katha') {
      result = _numbers * 0.0125;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers / 0.0125;
    } else if (selectedConversion == 'Square Yard' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 0.0006;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Square Yard') {
      result = _numbers / 0.0006;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Square Inch') {
      result = _numbers * 144;
    } else if (selectedConversion == 'Square Inch' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers / 144;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 107600;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers * 107600;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers * 0.0023;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers / 0.0023;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Katha') {
      result = _numbers * 0.0014;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers / 0.0014;
    } else if (selectedConversion == 'Square Foot' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 0.0001;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Square Foot') {
      result = _numbers / 0.0001;
    } else if (selectedConversion == 'Square Inch' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 1.55e+7;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Square Inch') {
      result = _numbers * 1.55e+7;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers * 247.1054;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 247.1054;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Katha') {
      result = _numbers * 149.4988;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 149.4988;
    } else if (selectedConversion == 'Hectare' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 7.4749;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Hectare') {
      result = _numbers / 7.4749;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Katha') {
      result = _numbers * 0.605;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers / 0.605;
    } else if (selectedConversion == 'Shotangsho' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 0.0303;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Shotangsho') {
      result = _numbers / 0.0303;
    } else if (selectedConversion == 'Katha' &&
        selectedConversion2 == 'Bigha') {
      result = _numbers * 0.05;
    } else if (selectedConversion == 'Bigha' &&
        selectedConversion2 == 'Katha') {
      result = _numbers / 0.05;
    } else {
      result = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area Convertidor'),
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
