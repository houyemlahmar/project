import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/technicien_model.dart';

import 'package:stacked/stacked.dart';

class geretechnicienVieModel extends BaseViewModel {
  Stream<List<techModel>> consts = const Stream.empty();
  List<techModel> Technicien = [];

  init() {
    getUsers();
    runBusyFuture(getgere());
  }

  getgere() {
    final collection =
        FirebaseFirestore.instance.collection('Technicien').snapshots();

    return collection.map((QuerySnapshot snapshots) {
      return snapshots.docs.map((e) => techModel.fromDocument(e)).toList();
    });
  }

  getUsers() async {
    final collection =
        await FirebaseFirestore.instance.collection('Technicien').get();

    Technicien = collection.docs
        .map((doc) => techModel.fromDocument(doc).copyWith(id: doc.id))
        .toList();
  }
}
