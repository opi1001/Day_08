import 'package:flutter/material.dart';
import 'package:practice_08/widgets/Home.dart';
import 'package:practice_08/widgets/My_Profile.dart';
import 'package:practice_08/widgets/My_Search.dart';

class NavDemo extends StatefulWidget {
  const NavDemo({super.key});

  @override
  State<NavDemo> createState() => _NavDemoState();
}

class _NavDemoState extends State<NavDemo> {
  List<Widget> pages = [MyHomePage(), MyProfile(), MySearch()];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 50,
          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.yellow,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedFontSize: 25,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
          ]),
    );
  }
}
