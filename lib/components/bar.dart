import 'package:uni_convertido/screens/area.dart';
import 'package:uni_convertido/screens/data.dart';
import 'package:uni_convertido/screens/home.dart';
import 'package:uni_convertido/screens/mass.dart';
import 'package:uni_convertido/screens/time.dart';
import 'package:uni_convertido/screens/volume.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:uni_convertido/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uni_convertido/screens/length_screen.dart';
import 'package:uni_convertido/screens/about.dart';

class Bar extends StatelessWidget {
  const Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF6b02a8),
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'UNIT CONVERTIDOR',
              style: kAppBarTextStyle,
            ),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.house,
              color: Colors.white,
            ),
            title: Text(
              'HOME',
              style: kDrawerText,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.userLarge,
              color: Colors.white,
            ),
            title: Text(
              'ABOUT',
              style: kDrawerText,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ),
              );
            },
          ),
          ExpansionTile(
            leading: Icon(
              FontAwesomeIcons.toolbox,
              color: Colors.white,
            ),
            iconColor: Colors.white,
            title: Text(
              'UNITS',
              style: kDrawerText,
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConversionScreen(),
                            ),
                          );
                        },
                        icon: Icon(FontAwesomeIcons.ruler, color: Colors.white),
                        label: Text('Length', style: kDrawerTexts),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Mass(),
                            ),
                          );
                        },
                        icon: Icon(FontAwesomeIcons.weightScale,
                            color: Colors.white),
                        label: Text('Mass', style: kDrawerTexts),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Area(),
                            ),
                          );
                        },
                        icon: Icon(FontAwesomeIcons.chartArea,
                            color: Colors.white),
                        label: Text('Area', style: kDrawerTexts),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Volume(),
                            ),
                          );
                        },
                        icon: Icon(FontAwesomeIcons.jugDetergent,
                            color: Colors.white),
                        label: Text('Volume', style: kDrawerTexts),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Data(),
                            ),
                          );
                        },
                        icon: Icon(FontAwesomeIcons.wifi,
                            color: Colors.white),
                        label: Text('Data', style: kDrawerTexts),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Time(),
                            ),
                          );
                        },
                        icon: Icon(FontAwesomeIcons.clock,
                            color: Colors.white),
                        label: Text('Time', style: kDrawerTexts),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.rightFromBracket,
              color: Colors.white,
            ),
            title: Text(
              'EXIT',
              style: kDrawerText,
            ),
            onTap: () {
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
