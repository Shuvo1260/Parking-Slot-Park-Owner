import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class ViewPlace extends StatefulWidget {
  @override
  _ViewPlaceState createState() => _ViewPlaceState();
}

class _ViewPlaceState extends State<ViewPlace> {
  PlaceData _placeData;
  @override
  void initState() {
    super.initState();
    this._placeData = Get.arguments;
    print(_placeData.address);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APPBAR_PLACE),
        backgroundColor: COLOR_CARIBBEAN_GREEN,
      ),
      body: Container(
        child: Row(
          children: [
            Card(),
          ],
        ),
      ),
    );
  }
}
