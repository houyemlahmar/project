import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/technicien_model.dart';
import 'package:stacked/stacked.dart';

class ajoutertechnicienViewModel extends BaseViewModel {
  createjoute() {
    final collection =
        FirebaseFirestore.instance.collection('Technicien').doc();

    collection.set(techModel(
      id: FirebaseAuth.instance.currentUser?.uid,
    ).toJson());
  }
}
