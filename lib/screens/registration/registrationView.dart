import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/Registration/RegistrationViewmodel.dart';
import 'package:login/screens/SignIn_screen.dart';
import 'package:login/screens/menu-screen.dart';

import 'package:stacked/stacked.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({required Key key}) : super(key: key);
  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  var firstname, secondname, CIN, phonenumber, email, password, confirmpassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistrationViewModel>.reactive(
      onModelReady: (model) => model.GetSignUp(),
      builder: (context, model, child) => Scaffold(
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
                                          return "merci de saisir votre pr??nom";
                                        }
                                        if (value.length > 30) {
                                          return "le pr??nom ne d??passe pas 20 lettres";
                                        }
                                        if (value.length < 3) {
                                          return "le pr??nom ne peut pas ??tre inf??rieur ?? 3 lettres ";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(Icons.person),
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  20, 15, 20, 15),
                                          hintText: "Pr??nom",
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
                                          return "le nom ne d??passe pas 20 lettres";
                                        }
                                        if (value.length < 3) {
                                          return "le nom ne peut pas ??tre inf??rieur ?? 3 lettres ";
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
                                          return "merci de saisir votre num??ro de CIN";
                                        }
                                        if (value.length > 8) {
                                          return "le num??ro de CIN ne d??passe pas 8 chiffres";
                                        }
                                        if (value.length < 8) {
                                          return "le num??ro de CIN ne peut pas ??tre inf??rieur ?? 8 chiffres";
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
                                          return "merci de saisir votre num??ro de t??l??phone ";
                                        }
                                        if (value.length > 8) {
                                          return "le num??ro de t??l??phone ne d??passe pas 8 chiffres";
                                        }
                                        if (value.length < 8) {
                                          return "le num??ro de t??l??phone ne peut pas ??tre inf??rieur ?? 8 chiffres";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(Icons.phone),
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  20, 15, 20, 15),
                                          hintText: "Num??ro de t??l??phone",
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
                                          return "l'adresse e-mail ne d??passe pas 50 caract??res";
                                        }
                                        if (value.length < 10) {
                                          return "l'adresse e-mail ne peut pas ??tre inf??rieur ?? 10 caract??res ";
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
                                    margin: const EdgeInsets.fromLTRB(
                                        20, 15, 20, 15),
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
                                          minimumSize:
                                              const Size.fromHeight(50),
                                        ),
                                        child: const Text("S'inscrire",
                                            textAlign: TextAlign.center),
                                        onPressed: () async {
                                          setState(() {
                                            launchURL();
                                          });
                                          UserCredential response =
                                              await SignUp();
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
                      ))))),
      viewModelBuilder: () => RegistrationViewModel(),
    );
  }

  void launchURL() {}

  SignUp() {}
}
