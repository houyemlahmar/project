import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login/Model/region_model.dart';
import 'package:login/Model/technicien_model.dart';

import 'package:stacked/stacked.dart';

class modefiertechnicienviewmodel extends BaseViewModel {
  techModel? User;

  getregion(String? id) async {
    setBusy(true);
    final doc =
        await FirebaseFirestore.instance.collection('Technicien').doc(id).get();

    User = techModel.fromDocument(doc);
    setBusy(false);
    notifyListeners();
  }
}
