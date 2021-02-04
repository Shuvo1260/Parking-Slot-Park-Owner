import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';

class AuthManager {
  Firestore _firestore;
  FirebaseAuth _firebaseAuth;
  AuthManager() {
    _firestore = Firestore.instance;
    _firebaseAuth = FirebaseAuth.instance;
  }

  bool isUserExist(UserData userData) {
    return false;
  }

  void signUP() async {
    await _firestore.collection("path");
  }

  Future<void> signIn(email, password) async {
    await _firebaseAuth
        .signInWithEmailAndPassword(
          email: email,
          password: password,
        )
        .then((value) => {
              if (value.user != null)
                {
                  //
                }
            });
  }
}
