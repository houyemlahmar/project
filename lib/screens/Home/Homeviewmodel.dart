import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/UserModel.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  User? user = FirebaseAuth.instance.currentUser;
  Users loggedInUser = Users();
  GetUser() {
    FirebaseFirestore.instance
        .collection("Users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = Users.formMap(value.data());
      notifyListeners();
    });
  }
}
