import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:parking_slot_seller/Controllers/PendingListController.dart';
import 'package:parking_slot_seller/Features/Screens/ViewBooking.dart';
import 'package:parking_slot_seller/Features/Widgets/ParkingWidgets.dart';

class PendingPage extends StatelessWidget {
  final pendingController = Get.put(PendingListController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: GetX<PendingListController>(
          builder: (controller) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: ParkingPlaceListItem(controller.parkingList[index]),
                  onPressed: () {
                    print(index);
                    Get.to(ViewBooking(),
                        arguments: controller.parkingList[index]);
                  },
                );
              },
              itemCount: controller.parkingList.length,
            );
          },
        ),
      ),
    );
  }
}
