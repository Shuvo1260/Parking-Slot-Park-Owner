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
          .doc(placeData.id)
          .set(placeData.toJSON());
      return true;
    } catch (error) {
      print("PlaceDataSavingError: $error");
      return false;
    }
  }

  static Future<String> uploadFile(String imageUrl, id) async {
    try {
      File file = File(imageUrl);
      var result = await FirebaseStorage.instance
          .ref(PATH_PLACE_IMAGE + id)
          .putFile(file);
      return await result.ref.getDownloadURL();
    } catch (error) {
      print("FileUploadingError: $error");
      return null;
    }
  }

  static Future<PlaceData> getData() async {
    //
  }
  static Future<List<PlaceData>> getDataList(owner) async {
    List<PlaceData> placeList = List<PlaceData>();
    try {
      print("Owner: $owner");
      var snapshot = await FirebaseFirestore.instance
          .collection(PATH_PLACE_DATA)
          .where('owner', isEqualTo: owner)
          .get();
      snapshot.docs.forEach((element) {
        print(element.data());
        PlaceData placeData = PlaceData();
        placeData.fromJSON(element.data());
        placeList.add(placeData);
      });
    } catch (error) {
      print("PlaceListGettingError: $error");
    }
    return placeList;
  }
}
