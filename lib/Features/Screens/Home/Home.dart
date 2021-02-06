import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Controllers/PlaceController.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Features/Screens/Home/AddPlace.dart';
import 'package:parking_slot_seller/Features/Screens/Home/ViewPlace.dart';
import 'package:parking_slot_seller/Features/Widgets/HomeWidgets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PlaceData> placeList = [
    PlaceData(
      id: 2,
      address:
          "Testfdsajsalfdkjfalskjdlfaskjlkdfsajlkasfdjlkjfadslkjfdaslkjfdsalkjfdsalkjfdsakljlskdfajas1",
      imageUrl:
          "https://i.pinimg.com/originals/66/d0/86/66d0863ef27e8dc8ab401072a526693f.jpg",
      rate: 16,
      phoneNumber: "01627415001",
      totalSlot: 10,
      parkedSlot: 3,
    ),
    PlaceData(
      id: 2,
      address: "Test2",
      imageUrl:
          "https://i.pinimg.com/originals/66/d0/86/66d0863ef27e8dc8ab401072a526693f.jpg",
      rate: 25,
      phoneNumber: "01627415002",
      totalSlot: 10,
      parkedSlot: 3,
    ),
    PlaceData(
      id: 2,
      address: "Test3",
      imageUrl:
          "https://i.pinimg.com/originals/66/d0/86/66d0863ef27e8dc8ab401072a526693f.jpg",
      rate: 5,
      phoneNumber: "01627415003",
      totalSlot: 10,
      parkedSlot: 3,
    ),
  ];

  @override
  void setState(fn) {
    super.setState(fn);
    //
  }

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
                    child: ViewPlaceListItem(placeList[index]),
                    onPressed: () {
                      print(index);
                      Get.to(ViewPlace(), arguments: placeList[index]);
                    },
                  );
                },
                itemCount: placeList.length,
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
