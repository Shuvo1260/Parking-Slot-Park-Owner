import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/ParkingData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class HistoryListController extends GetxController {
  FirebaseAuth _firebaseAuth;
  var parkingList = List<ParkingData>().obs;

  @override
  void onInit() {
    super.onInit();
    _firebaseAuth = FirebaseAuth.instance;
    fetchList();
  }

  void fetchList() async {
    FirebaseFirestore.instance
        .collection(PATH_PARKING_DATA)
        .where('parkOwner', isEqualTo: _firebaseAuth.currentUser.email.trim())
        .where('status', isEqualTo: 3)
        .orderBy('id', descending: true)
        .snapshots(includeMetadataChanges: true)
        .listen((event) {
      event.docs.forEach((element) {
        print("Parking: ${element.data()}");
        var parking = ParkingData();
        parking.fromJSON(element.data());
        parkingList.add(parking);
      });
    });
  }
}
