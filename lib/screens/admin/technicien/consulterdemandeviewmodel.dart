import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/user_model.dart';
import 'package:stacked/stacked.dart';

class consulterdemandeviewmodel extends BaseViewModel {
  Stream<List<ConstructionModel>> consts = const Stream.empty();

  init() {
    runBusyFuture(getdemande());
  }

  getdemande() async {
    final collection = FirebaseFirestore.instance()
        .collection('construction')
        .where("etatOrdre", isEqualTo: "encours")
        .orderBy("created_at", descending: true)
        .snapshots();

    consts = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs
          .map((e) => ConstructionModel.fromDocument(e))
          .toList();
    });
  }
}
