import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'message.dart';
import 'home.dart';
import 'search.dart';
import 'profil.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}
int _bottomNavIndex = 0;

final List<IconData> iconList = [
  Icons.home,
  Icons.search,
  Icons.notifications,
  Icons.person
];

final List<Widget> _pages = [
  const Home(),
  const Search(),
  const Message(),
  const profil()
];

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_bottomNavIndex], //destination screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 42,
        rightCornerRadius: 42,
        backgroundColor: Colors.black,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}