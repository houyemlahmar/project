import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:login/Model/user_model.dart';
import 'package:stacked/stacked.dart';

class RegistrationViewModel extends BaseViewModel {
  late String email, password;

  Future<bool> register(BuildContext context, UserModel user) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      final doc = FirebaseFirestore.instance()
          .collection('users')
          .doc(credential.user?.uid);
      doc.set(user.toJson());
      return true;
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
      return false;
    } catch (e) {
      return false;
    }
  }
}
