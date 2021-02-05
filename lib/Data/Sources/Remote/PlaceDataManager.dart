import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class PlaceDataManager {
  static Future<bool> saveData(PlaceData placeData) async {
    try {
      await FirebaseFirestore.instance
          .collection(PATH_PLACE_DATA)
          .doc()
          .set(placeData.toJSON());
      return true;
    } catch (error) {
      print("PlaceDataSavingError: $error");
      return false;
    }
  }

  static Future<String> uploadFile(String imageUrl) async {
    try {
      File file = File(imageUrl);
      var result =
          await FirebaseStorage.instance.ref("Place_Image").putFile(file);
      return await result.ref.getDownloadURL();
    } catch (error) {
      print("FileUploadingError: $error");
      return null;
    }
  }

  static Future<PlaceData> getData() async {
    //
  }
}
