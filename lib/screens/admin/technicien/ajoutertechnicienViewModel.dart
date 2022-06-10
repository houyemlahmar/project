import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/region_model.dart';
import 'package:login/Model/technicien_model.dart';
import 'package:stacked/stacked.dart';

class AjouterTechnicienViewModel extends BaseViewModel {
  RegionModel? selectedRegion;

  createjoute(techModel model, context, email, password) async {
    model.region = selectedRegion?.nom;
    model.id_region = selectedRegion?.id_region;
    model.id = FirebaseAuth.instance.currentUser?.uid;

    try {
      UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      final doc = FirebaseFirestore.instance
          .collection('Technicien')
          .doc(credential.user?.uid);

      doc.set(model.toJson());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        AwesomeDialog(
                context: context,
                title: "erreur",
                body: const Text('mot de passe faible'))
            .show();
      } else if (e.code == 'email-already-in-use') {
        AwesomeDialog(
                context: context,
                title: "erreur",
                body: const Text('Compte déjà existe avec cet e-mail.'))
            .show();
      }
    } catch (e) {}
  }

  Stream<List<RegionModel>> getRegions() {
    final collection =
        FirebaseFirestore.instance.collection('regions').snapshots();

    return collection.map((QuerySnapshot snapshots) {
      return snapshots.docs.map((e) => RegionModel.fromDocument(e)).toList();
    });
  }

  setSelectedRegion(RegionModel? region) {
    selectedRegion = region;
    notifyListeners();
  }
}
