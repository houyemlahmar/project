import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/technicien_model.dart';
import 'package:stacked/stacked.dart';

class AjouterTechnicienViewModel extends BaseViewModel {
  createjoute(techModel model) {
    model.id = FirebaseAuth.instance.currentUser?.uid;
    final collection =
        FirebaseFirestore.instance.collection('Technicien').doc();

    collection.set(model.toJson());
  }
}
