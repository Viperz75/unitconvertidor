import 'package:flutter/material.dart';
import 'package:converter/components/bar.dart';
import 'package:converter/constants.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final double coverHeight = 210;
  final double profileHeight = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uni Convertido'),
        backgroundColor: Color(0xff6b02a8),
      ),
      drawer: Bar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'images/cover.png',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.fill,
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('images/profile.png'),
      );

  Widget buildContent() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Text(
              'Niaz Mahmud Akash',
              style: kNameText,
            )),
            const Center(
              child: Text(
                'Programmer',
                style: kNameTexts,
              ),
            ),
            const SizedBox(height: 16),
            const Text('About', style: kAbout),
            const SizedBox(height: 16),
            const Text(
              'A Programmer living in Bangladesh. I am currently studying, besides I make Web, Desktop & Mobile Applications.',
              style: kDetailTextPara,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
}
