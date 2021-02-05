import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class UserDataManager {
  static FirebaseFirestore _firestore;

  UserDataManager() {
    _firestore = FirebaseFirestore.instance;
  }

  static Future<bool> saveUserData(UserData userData) async {
    try {
      await _firestore
          .collection(PATH_USER_DATA)
          .doc(userData.id)
          .set(userData.toJSON());
      return true;
    } catch (error) {
      print("UserDataSavingError: $error");
      return false;
    }
  }

  static Future<UserData> getUserData(id) async {
    //
  }
}
