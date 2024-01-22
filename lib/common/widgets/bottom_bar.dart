
import 'package:flutter/material.dart';
import 'package:hobanovel/features/home/screen/home_screen.dart';
import 'package:hobanovel/features/profile/screen/profile_screen.dart';
import 'package:hobanovel/features/bookshelf/screen/bookshelf_screen.dart';
import 'package:hobanovel/features/notification/screen/notification_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 1;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const BookshelfScreen(),
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.turned_in),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_checked),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: ""
          ),
        ],
      ),
    );
  }
}