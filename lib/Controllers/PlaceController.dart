import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Data/Sources/Remote/PlaceDataManager.dart';

class PlaceController extends GetxController {
  var placeList = List<PlaceData>().obs;
  FirebaseAuth _firebaseAuth;
  @override
  void onInit() {
    super.onInit();
    _firebaseAuth = FirebaseAuth.instance;
    _fetchPlaceList();
  }

  void _fetchPlaceList() async {
    placeList.assignAll(
        await PlaceDataManager.getDataList(_firebaseAuth.currentUser.email));
  }
}
