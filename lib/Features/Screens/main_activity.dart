import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  var appBarTitle = "Temp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: COLOR_CARIBBEAN_GREEN,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}
