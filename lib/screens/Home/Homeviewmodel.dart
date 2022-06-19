import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/construction_model.dart';

import 'package:login/Model/user_model.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  User? user = FirebaseAuth.instance.currentUser;

  UserModel loggedInUser = UserModel(id: "s");

  GetUser() {
    FirebaseFirestore.instance()
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromDocument(value);
      notifyListeners();
    });
  }
}
