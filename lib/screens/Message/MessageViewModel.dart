import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/Model/boite_model.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/region_model.dart';
import 'package:login/Model/rue_model.dart';
import 'package:stacked/stacked.dart';

class MessageViewModel extends BaseViewModel {
  Stream<List<ConstructionModel>> consts = const Stream.empty();

  init() {
    runBusyFuture(getmessage());
  }

  getmessage() async {
    final collection = FirebaseFirestore.instance
        .collection('construction')
        .where("userId", isEqualTo: FirebaseAuth.instance.currentUser?.uid)
        .where("visible", isEqualTo: true)
        .snapshots();

    consts = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs
          .map((e) => ConstructionModel.fromDocument(e))
          .toList();
    });
  }

  deleteMessage(String? id) {
    final doc = FirebaseFirestore.instance.collection('construction').doc(id);

    doc.update({"visible": false});
  }
}
