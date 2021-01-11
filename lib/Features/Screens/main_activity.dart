import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Utils/Utils.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  var _navIndex = 0;
  var _appBarTitle = APPBAR_TITLES[0];

  void onNavigationTap(int index) {
    setState(() {
      _navIndex = index;
      _appBarTitle = APPBAR_TITLES[_navIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        backgroundColor: COLOR_CARIBBEAN_GREEN,
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
