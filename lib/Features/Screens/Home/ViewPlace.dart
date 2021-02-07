import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Data/Sources/Remote/PlaceDataManager.dart';
import 'package:parking_slot_seller/Features/Widgets/ViewPlaceWidgets.dart';
import 'package:parking_slot_seller/Resources/assets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';
import 'package:parking_slot_seller/Resources/strings.dart';
import 'package:parking_slot_seller/Resources/values.dart';
import 'package:parking_slot_seller/Utils/AppManager.dart';

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

  void deleteData() async {
    if (await PlaceDataManager.deleteData(_placeData.id)) {
      AppManager.showToast(message: "Successfully deleted");
      Get.back();
    } else {
      AppManager.showToast(
          message: "Operation failed", backgroundColor: Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          APPBAR_PLACE,
          style: TextStyle(
            fontFamily: FONT_BANK_GOTHIC,
            fontSize: FONT_SIZE_APPBAR,
          ),
        ),
        backgroundColor: COLOR_CARIBBEAN_GREEN,
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              deleteData();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ViewPlaceImage(placeData: _placeData),
              SizedBox(
                height: 10.0,
              ),
              ViewPlaceDetails(placeData: _placeData),
              ViewPlaceSlotWidget(placeData: _placeData),
            ],
          ),
        ),
      ),
    );
  }
}
