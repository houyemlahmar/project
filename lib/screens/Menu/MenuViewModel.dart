import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';

class MenuViewModel extends BaseViewModel {
  getUser() {
    var user = FirebaseAuth.instance.currentUser;
    print(user?.email);
  }
}
