import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class UserDataManager {
  static FirebaseFirestore _firestore;

  static Future<bool> saveUserData(UserData userData) async {
    try {
      _firestore = FirebaseFirestore.instance;
      print("UserDataSaving: $PATH_USER_DATA");
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
