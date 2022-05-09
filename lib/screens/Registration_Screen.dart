import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/SignIn_screen.dart';
import 'package:login/screens/menu-screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  var firstname, secondname, CIN, phonenumber, email, password, confirmpassword;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  var _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  bool isloading = false;
  signUp() async {
    var formdata = formstate.currentState;

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

  var Navigatore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SingleChildScrollView(
                child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(children: <Widget>[
                        SizedBox(
                            height: 150,
                            width: 170,
                            child: Image.asset(
                              "assets/LOGO_TT.jpg",
                              fit: BoxFit.scaleDown,
                            )),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Form(
                              key: formstate,
                              child: Column(children: [
                                TextFormField(
                                    onSaved: (value) {
                                      firstname = value;
                                    },
                                    keyboardType: TextInputType.name,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "merci de saisir votre prénom";
                                      }
                                      if (value.length > 30) {
                                        return "le prénom ne dépasse pas 20 lettres";
                                      }
                                      if (value.length < 3) {
                                        return "le prénom ne peut pas être inférieur à 3 lettres ";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.person),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "Prénom",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                const SizedBox(height: 20),
                                TextFormField(
                                    onSaved: (value) {
                                      secondname = value;
                                    },
                                    keyboardType: TextInputType.name,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "merci de saisir votre nom";
                                      }
                                      if (value.length > 30) {
                                        return "le nom ne dépasse pas 20 lettres";
                                      }
                                      if (value.length < 3) {
                                        return "le nom ne peut pas être inférieur à 3 lettres ";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.person),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "Nom de famille",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                const SizedBox(height: 20),
                                TextFormField(
                                    onSaved: (value) {
                                      phonenumber = value;
                                    },
                                    keyboardType: TextInputType.number,
                                    maxLength: 8,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "merci de saisir votre numéro de CIN";
                                      }
                                      if (value.length > 8) {
                                        return "le numéro de CIN ne dépasse pas 8 chiffres";
                                      }
                                      if (value.length < 8) {
                                        return "le numéro de CIN ne peut pas être inférieur à 8 chiffres";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        prefixIcon:
                                            const Icon(Icons.card_membership),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "CIN",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                const SizedBox(height: 20),
                                TextFormField(
                                    onSaved: (value) {
                                      CIN = value;
                                    },
                                    keyboardType: TextInputType.number,
                                    maxLength: 8,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "merci de saisir votre numéro de téléphone ";
                                      }
                                      if (value.length > 8) {
                                        return "le numéro de téléphone ne dépasse pas 8 chiffres";
                                      }
                                      if (value.length < 8) {
                                        return "le numéro de téléphone ne peut pas être inférieur à 8 chiffres";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.phone),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "Numéro de téléphone",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                const SizedBox(height: 20),
                                TextFormField(
                                    onSaved: (value) {
                                      email = value;
                                    },
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value!.isEmpty ||
                                          !value.contains('@')) {
                                        return "merci de saisir votre adresse e-mail ";
                                      }
                                      if (value.length > 50) {
                                        return "l'adresse e-mail ne dépasse pas 50 caractéres";
                                      }
                                      if (value.length < 10) {
                                        return "l'adresse e-mail ne peut pas être inférieur à 10 caractéres ";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.email),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "Adresse e-mail",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                const SizedBox(height: 20),
                                TextFormField(
                                    onSaved: (value) {
                                      password = value;
                                    },
                                    validator: (value) {
                                      RegExp regex = RegExp(r'^.{6,}$');
                                      if (value!.isEmpty) {
                                        return ("Merci de saisir votre mot de passe");
                                      }
                                      if (!regex.hasMatch(value)) {
                                        return ("veuillez valider votre mot de passe (Min. 6 Charater)");
                                      }
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.vpn_key),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "Mot de passe",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                const SizedBox(height: 20),
                                TextFormField(
                                    onSaved: (value) {
                                      confirmpassword = value;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.vpn_key),
                                        contentPadding:
                                            const EdgeInsets.fromLTRB(
                                                20, 15, 20, 15),
                                        hintText: "Confirmez le mot de passe",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                Container(
                                    margin: const EdgeInsets.all(5),
                                    child: Row(
                                      children: [
                                        const Text("Si vous avez un compte"),
                                        InkWell(
                                            onTap: () {},
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SignInScreen()));
                                              },
                                              child: const Text("cliquez ici",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      backgroundColor:
                                                          Colors.white)),
                                            ))
                                      ],
                                    )),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blueAccent,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30),
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        minimumSize: const Size.fromHeight(50),
                                      ),
                                      child: const Text("S'inscrire",
                                          textAlign: TextAlign.center),
                                      onPressed: () async {
                                        setState(() {
                                          launchURL();
                                        });
                                        UserCredential response =
                                            await signUp();
                                        print("=================");
                                        if (response != null) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MenuScreen()));
                                        } else
                                          print("SignUp is failed");

                                        print("=================");
                                      }),
                                ),
                              ])),
                        )
                      ]),
                    )))));
  }

  void launchURL() {}
}
