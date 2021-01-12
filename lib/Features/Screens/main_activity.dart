import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Features/Screens/History/History.dart';
import 'package:parking_slot_seller/Features/Screens/Parked/Parked.dart';
import 'package:parking_slot_seller/Features/Screens/Pending/Pending.dart';
import 'package:parking_slot_seller/Features/Screens/Profile/Profile.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Utils/Utils.dart';

import 'Home/Home.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  var _navIndex = 0;
  var _appBarTitle = APPBAR_TITLES[0];
  var _BOTTOM_NAVIGATION_PAGES = [
    HomePage(),
    ParkedPage(),
    PendingPage(),
    HistoryPage(),
    Profile()
  ];

  void onNavigationTap(int index) {
    setState(() {
      _navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APPBAR_TITLES[_navIndex]),
        backgroundColor: COLOR_CARIBBEAN_GREEN,
      ),
      body: SafeArea(
        child: _BOTTOM_NAVIGATION_PAGES[_navIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: BOTTOM_NAVIGATION_ITEMS,
        type: BottomNavigationBarType.fixed,
        currentIndex: _navIndex,
        onTap: onNavigationTap,
      ),
    );
  }
}
