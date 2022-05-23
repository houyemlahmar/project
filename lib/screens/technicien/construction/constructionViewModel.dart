import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:stacked/stacked.dart';

class ConstructionViewModel extends BaseViewModel {
  Stream<List<ConstructionModel>> consts = const Stream.empty();

  init() {
    runBusyFuture(getConstruction());
  }

  getConstruction() async {
    final collection = FirebaseFirestore.instance
        .collection('construction')
        .where("id_region", isEqualTo: FirebaseAuth.instance.currentUser?.uid)
        .snapshots();

    consts = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs
          .map((e) => ConstructionModel.fromDocument(e))
          .toList();
    });
  }
}
