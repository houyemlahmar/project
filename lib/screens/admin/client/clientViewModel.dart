import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/user_model.dart';
import 'package:stacked/stacked.dart';

class consulterclientViewModel extends BaseViewModel {
  Stream<List<UserModel>> consts = const Stream.empty();
  List<ConstructionModel> construction = [];

  init() {
    getconstruction();
    runBusyFuture(getclient());
  }

  getclient() async {
    final collection =
        FirebaseFirestore.instance().collection('users').snapshots();

    consts = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs.map((e) => UserModel.fromDocument(e)).toList();
    });
  }

  getconstruction() async {
    final collection =
        await FirebaseFirestore.instance().collection('construction').get();

    construction = collection.docs
        .map((doc) => ConstructionModel.fromDocument(doc).copyWith(id: doc.id))
        .toList();
  }
}
