import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Controllers/PendingListController.dart';
import 'package:parking_slot_seller/Data/Models/ParkingData.dart';
import 'package:parking_slot_seller/Features/Screens/ViewBooking.dart';
import 'package:parking_slot_seller/Features/Widgets/ParkingWidgets.dart';

class PendingPage extends StatefulWidget {
  @override
  _PendingPageState createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
  final pendingController = PendingListController();

  List<ParkingData> parkingList = List<ParkingData>();

  void getData() async {
    var values = await pendingController.fetchList();
    setState(() {
      parkingList = values;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Container(
      child: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return FlatButton(
              padding: EdgeInsets.all(0.0),
              child: ParkingPlaceListItem(parkingList[index]),
              onPressed: () {
                print(index);
                Get.to(ViewBooking(), arguments: parkingList[index]);
              },
            );
          },
          itemCount: parkingList.length,
        ),
      ),
    );
  }
}
