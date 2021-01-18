import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Features/Screens/Home/AddPlace.dart';
import 'package:parking_slot_seller/Features/Widgets/HomeWidgets.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imageUrl =
      "https://i.pinimg.com/originals/66/d0/86/66d0863ef27e8dc8ab401072a526693f.jpg";
  List<PlaceData> placeList = [
    PlaceData(
        id: 2,
        address: "dflskjfds",
        imageUrl:
            "https://i.pinimg.com/originals/66/d0/86/66d0863ef27e8dc8ab401072a526693f.jpg",
        rate: 20),
    PlaceData(
        id: 2,
        address: "dflskjfds",
        imageUrl:
            "https://i.pinimg.com/originals/66/d0/86/66d0863ef27e8dc8ab401072a526693f.jpg",
        rate: 20),
    PlaceData(
        id: 2,
        address: "dflskjfds",
        imageUrl:
            "https://i.pinimg.com/originals/66/d0/86/66d0863ef27e8dc8ab401072a526693f.jpg",
        rate: 20),
  ];

  @override
  void initState() {
    super.initState();
    placeList.add(PlaceData(id: 2, address: "dflskjfds"));
    print(placeList.length);
  }

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
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ViewPlaceListItem(placeList[index]);
            },
            itemCount: placeList.length,
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
