import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/user_model.dart';
import 'package:stacked/stacked.dart';

class consulterclientViewModel extends BaseViewModel {
  Stream<List<UserModel>> consts = const Stream.empty();

  client() {
    runBusyFuture(getclient());
  }

  getclient() async {
    final collection = FirebaseFirestore.instance
        .collection('users')
        .where("users", isEqualTo: FirebaseAuth.instance.currentUser?.uid)
        .snapshots();

    consts = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs.map((e) => UserModel.fromDocument(e)).toList();
    });
  }
}
