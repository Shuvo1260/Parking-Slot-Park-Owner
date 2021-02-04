import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class AuthManager {
  Firestore _firestore;
  FirebaseAuth _firebaseAuth;
  AuthManager() {
    _firestore = Firestore.instance;
    _firebaseAuth = FirebaseAuth.instance;
  }

  Future<bool> isUserExist(String id) async {
    var value = await _firestore.collection(PATH_USER_DATA).document(id).get();
    print(value.data);
    if (value.data != null) return true;
    return false;
  }

  void signUP(UserData userData) async {}

  Future<bool> _saveUserData(UserData userData) async {}

  Future<void> signIn(email, password) async {
    await _firebaseAuth
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      if (value.user != null) {
        //
      }
    });
  }
}
