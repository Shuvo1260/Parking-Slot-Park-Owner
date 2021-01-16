import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Features/Screens/Home/AddPlace.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(
                AddPlace(),
              );
            },
            child: Icon(Icons.add),
            backgroundColor: COLOR_CARIBBEAN_GREEN,
          ),
        ),
      ),
    );
  }
}
