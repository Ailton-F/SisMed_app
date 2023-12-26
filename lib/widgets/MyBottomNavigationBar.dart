import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        widget.pageController.animateToPage(
            index, duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut);
      },
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      iconSize: 22,
      items: [
        BottomNavigationBarItem(label: '',
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.home))),
        BottomNavigationBarItem(label: '',
            icon: IconButton(
                onPressed: () {}, icon: Icon(Icons.newspaper_outlined))),
        BottomNavigationBarItem(label: '',
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))),
        BottomNavigationBarItem(label: '',
            icon: IconButton(
                onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined))),
        BottomNavigationBarItem(label: '',
            icon: IconButton(
                onPressed: () {}, icon: Icon(Icons.person_outline))),
      ],
    );
  }
}
