import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/user_model.dart';
import 'package:stacked/stacked.dart';

class demandeclientviewmodel extends BaseViewModel {
  ConstructionModel? user;

  getUser(String? id) async {
    setBusy(true);
    final doc = await FirebaseFirestore.instance
        .collection('construction')
        .doc(id)
        .get();

    user = ConstructionModel.fromDocument(doc);
    setBusy(false);
    notifyListeners();
  }
}
