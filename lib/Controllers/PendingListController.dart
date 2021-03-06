import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/ParkingData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class PendingListController extends GetxController {
  FirebaseAuth _firebaseAuth;
  var parkingList = List<ParkingData>();

  PendingListController() {
    _firebaseAuth = FirebaseAuth.instance;
  }

  @override
  void onInit() {
    super.onInit();
  }

  Future<List<ParkingData>> fetchList() async {
    print("Parking data: ");
    var values = await FirebaseFirestore.instance
        .collection(PATH_PARKING_DATA)
        .where('parkOwner', isEqualTo: _firebaseAuth.currentUser.email.trim())
        .where('status', isLessThan: 2)
        .get();
    parkingList.clear();

    values.docs.forEach((element) {
      var parkingData = ParkingData();
      parkingData.fromJSON(element.data());
      print("Parking data: " + parkingData.carLicense);
      parkingList.add(parkingData);
    });

    return parkingList;
  }
}
