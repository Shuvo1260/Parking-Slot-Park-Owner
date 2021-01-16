import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Features/Screens/Home/AddPlace.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PlaceData> placeList = [
    PlaceData(id: 2, address: "dflskjfds"),
    PlaceData(id: 2, address: "dflskjfds"),
    PlaceData(id: 2, address: "dflskjfds"),
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
              return Card(
                child: Text(placeList[index].address),
              );
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
