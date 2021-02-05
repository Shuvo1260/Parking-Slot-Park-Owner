import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Data/Sources/Remote/UserDataManager.dart';
import 'package:parking_slot_seller/Utils/AppManager.dart';

class UserController extends GetxController {
  var userData = UserData().obs;
  FirebaseAuth _firebaseAuth;
  String id;
  @override
  void onInit() {
    super.onInit();
    _firebaseAuth = FirebaseAuth.instance;
    id = AppManager.emailToID(_firebaseAuth.currentUser.email);
    fetchUserData();
  }

  void fetchUserData() async {
    userData.value = await UserDataManager.getUserData(id);
  }
}
