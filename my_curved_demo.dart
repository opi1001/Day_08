import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practice_08/widgets/Home.dart';
import 'package:practice_08/widgets/My_Profile.dart';
import 'package:practice_08/widgets/My_Search.dart';

class MyCurvedDemo extends StatefulWidget {
  const MyCurvedDemo({super.key});

  @override
  State<MyCurvedDemo> createState() => _MyCurvedDemoState();
}

class _MyCurvedDemoState extends State<MyCurvedDemo> {
  List<Widget> pages = [MyHomePage(), MyProfile(), MySearch()];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.yellowAccent,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          animationCurve: Curves.ease,
          buttonBackgroundColor: Colors.teal,
          color: Colors.white,
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.green,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.black,
              shadows: [Shadow(color: Colors.purple)],
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.red,
            ),
          ]),
    );
  }
}
