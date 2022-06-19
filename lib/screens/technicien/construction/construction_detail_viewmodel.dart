import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login/Model/user_model.dart';
import 'package:stacked/stacked.dart';

class modefiertechnicienviewmodel extends BaseViewModel {
  UserModel? user;

  getUser(String? id) async {
    setBusy(true);
    final doc =
        await FirebaseFirestore.instance().collection('users').doc(id).get();

    user = UserModel.fromDocument(doc);
    setBusy(false);
    notifyListeners();
  }
}
