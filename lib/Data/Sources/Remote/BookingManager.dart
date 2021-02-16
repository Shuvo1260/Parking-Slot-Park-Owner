import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class BookingManager {
  static Future<bool> updateBooking(String id, int status) async {
    try {
      await FirebaseFirestore.instance
          .collection(PATH_PARKING_DATA)
          .doc(id)
          .update({
        'status': status,
      });
      return true;
    } catch (error) {
      print("UpdateBookingError: $error");
      return false;
    }
  }
}
