import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/Model/technicien_model.dart';

import 'package:stacked/stacked.dart';

class geretechnicienVieModel extends BaseViewModel {
 
 
 Stream<List<techModel>> getgere()  {
    final collection =
        FirebaseFirestore.instance.collection('Technicien').snapshots();

    return collection.map((QuerySnapshot snapshots) {
      return snapshots.docs.map((e) => techModel.fromDocument(e)).toList();
    });
  }
}
