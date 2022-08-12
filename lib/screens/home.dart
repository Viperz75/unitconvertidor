import 'package:uni_convertido/constants.dart';
import 'package:uni_convertido/screens/area.dart';
import 'package:uni_convertido/screens/data.dart';
import 'package:uni_convertido/screens/mass.dart';
import 'package:uni_convertido/screens/time.dart';
import 'package:uni_convertido/screens/volume.dart';
import 'package:flutter/material.dart';
import 'package:uni_convertido/components/bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uni_convertido/components/homeCardButtons.dart';
import 'package:uni_convertido/screens/length_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uni Convertidor'),
        backgroundColor: const Color(0xff6b02a8),
      ),
      drawer: const Bar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Row(
              children: [
                allUnits(
                  icon: FontAwesomeIcons.ruler,
                  label: 'Length',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConversionScreen(),
                      ),
                    );
                  },
                ),
                allUnits(
                  icon: FontAwesomeIcons.weightScale,
                  label: 'Mass',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mass(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                allUnits(
                  icon: FontAwesomeIcons.chartArea,
                  label: 'Area',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Area(),
                      ),
                    );
                  },
                ),
                allUnits(
                  icon: FontAwesomeIcons.jugDetergent,
                  label: 'Volume',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Volume(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                allUnits(
                  icon: FontAwesomeIcons.wifi,
                  label: 'Data',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Data(),
                      ),
                    );
                  },
                ),
                allUnits(
                  icon: FontAwesomeIcons.clock,
                  label: 'Time',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Time(),
                      ),
                    );
                  },
                )
              ],
            ),
            const SizedBox(height: 40.0),
            const Text('DID YOU KNOW?', style: kDetailText),
            const SizedBox(
              height: 10.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueAccent,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10.0,
                shadowColor: const Color(0xff9e7dd2),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      'The history of the metric system began during the Age of Enlightenment with measures of length and weight derived from nature. The first practical realization of the metric system came in 1799, during the French Revolution. '
                      'Gabriel Mouton, a church vicar in Lyons, France, is considered by many to be the founding father of the metric system. In 1670, Mouton proposed a decimal system of measurement that French scientists would spend years further refining.',
                      style: kDetailTextPara,
                      textAlign: TextAlign.justify),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
