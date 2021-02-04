import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parking_slot_seller/Data/Models/UserData.dart';
import 'package:parking_slot_seller/Resources/strings.dart';

class AuthManager {
  FirebaseFirestore _firestore;
  FirebaseAuth _firebaseAuth;
  AuthManager() {
    _firestore = FirebaseFirestore.instance;
    _firebaseAuth = FirebaseAuth.instance;
  }

  Future<bool> isUserExist(String id) async {
    var value = await _firestore.collection(PATH_USER_DATA).doc(id).get();
    print("IsExist: ${value.exists}");
    return value.exists;
  }

  Future<bool> signUP(UserData userData) async {
    try {
      var value = await _firebaseAuth.createUserWithEmailAndPassword(
          email: userData.email.trim(), password: userData.password);
      if (value.user != null) {
        await value.user.sendEmailVerification();
        return await _saveUserData(userData);
      }
    } catch (error) {
      print("SignUpError: $error");
    }
    return false;
  }

  Future<bool> _saveUserData(UserData userData) async {
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
