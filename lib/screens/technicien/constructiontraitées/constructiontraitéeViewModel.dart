import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/technicien_model.dart';
import 'package:stacked/stacked.dart';

class ConstructiontraiteViewModel extends BaseViewModel {
  Stream<List<ConstructionModel>> consts = const Stream.empty();

  init() {
    runBusyFuture(getConstruction());
  }

  getConstruction() async {
    final doc = await FirebaseFirestore.instance()
        .collection('Technicien')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get();

    techModel technicien = techModel.fromDocument(doc);

    final collection = FirebaseFirestore.instance()
        .collection('construction')
        .where("id_region", isEqualTo: technicien.id_region)
        .where("etatDemande", isEqualTo: "Validé")
        .orderBy("created_at", descending: true)
        .snapshots();

    consts = collection.map((QuerySnapshot snapshots) {
      return snapshots.docs
          .map((e) => ConstructionModel.fromDocument(e))
          .toList();
    });
  }
}
