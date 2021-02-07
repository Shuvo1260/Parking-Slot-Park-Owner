import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Controllers/PlaceController.dart';
import 'package:parking_slot_seller/Features/Screens/Home/AddPlace.dart';
import 'package:parking_slot_seller/Features/Screens/Home/ViewPlace.dart';
import 'package:parking_slot_seller/Features/Widgets/HomeWidgets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var placeListController = Get.put(PlaceController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          body: GetX<PlaceController>(
            builder: (controller) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return FlatButton(
                    padding: EdgeInsets.all(0.0),
                    child: ViewPlaceListItem(controller.placeList[index]),
                    onPressed: () {
                      print(index);
                      Get.to(ViewPlace(),
                          arguments: controller.placeList[index]);
                    },
                  );
                },
                itemCount: controller.placeList.length,
              );
            },
          ),
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
