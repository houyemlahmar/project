import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/construction_model.dart';
import 'package:stacked/stacked.dart';

class DemandeViewModel extends BaseViewModel {
  Stream<List<ConstructionModel>> consts = const Stream.empty();

  init() {
    runBusyFuture(getDemandes());
  }

  getDemandes() async {
    final collection = FirebaseFirestore.instance()
        .collection('construction')
        .where("userId", isEqualTo: FirebaseAuth.instance.currentUser?.uid)
        .snapshots();

    consts = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs
          .map((e) => ConstructionModel.fromDocument(e))
          .toList();
    });
  }
}
