import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Controllers/HistoryListController.dart';
import 'package:parking_slot_seller/Data/Models/ParkingData.dart';
import 'package:parking_slot_seller/Features/Widgets/ParkingWidgets.dart';

import '../ViewBooking.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final pendingController = HistoryListController();

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
