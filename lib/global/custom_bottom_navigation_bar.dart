import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedIndex,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.indigoAccent,
      items: const [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.house), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bookBookmark), label: 'BooK Mark'),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.message), label: 'Message'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile'),
      ],
    );
  }
}
