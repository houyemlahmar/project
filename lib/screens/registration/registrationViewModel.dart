import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class RegistrationViewModel extends BaseViewModel {
  var email, password;
  final _auth = FirebaseAuth.instance;
  bool isloading = false;
  GetSignUp() {
    signUp() async {
      var formstate;
      var formdata = formstate.currentState;
      var context;

      if (formdata!.validate) {
        formdata.save();
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(email: email, password: password);
          return userCredential;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            AwesomeDialog(
                context: context,
                title: "erreur",
                body: Text('mot de passe faible'))
              ..show();
          } else if (e.code == 'email-already-in-use') {
            AwesomeDialog(
                context: context,
                title: "erreur",
                body: Text('Compte déjà existe avec cet e-mail.'))
              ..show();
          }
        } catch (e) {
          print(e);
        }
      }
    }
  }
}
