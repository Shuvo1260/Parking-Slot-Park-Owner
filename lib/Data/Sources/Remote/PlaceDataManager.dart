import 'package:cloud_firestore/cloud_firestore.dart';
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

  static Future<PlaceData> getData() async {
    //
  }
}
