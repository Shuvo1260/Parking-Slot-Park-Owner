import 'package:flutter/material.dart';
import 'package:parking_slot_seller/Features/Widgets/AddPlaceWidgets.dart';

class AddPlace extends StatefulWidget {
  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                AddPlaceTextField(
                  (value) {},
                  obscure: false,
                  hint: "Address",
                  keyboardType: TextInputType.streetAddress,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
