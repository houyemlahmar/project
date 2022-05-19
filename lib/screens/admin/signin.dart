import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/screens/Registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/admin/page.dart';

import 'package:login/screens/menu-screen.dart';

class signinadmin extends StatefulWidget {
  const signinadmin({Key? key}) : super(key: key);

  @override
  _signinadminState createState() => _signinadminState();
}

class _signinadminState extends State<signinadmin> {
  // form key
  var _formKey = GlobalKey<FormState>();

  // textform fields value
  var email, password;

  // firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
        autofocus: false,
        keyboardType: TextInputType.text,
        // validator: (){},
        onSaved: (value) {
          email = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.mail,
            color: Color.fromARGB(255, 120, 196, 255),
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Adresse E-mail",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    // password field

    var centre = MainAxisAlignment.center;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          "assets/appbar1.jpeg",
                          height: 250,
                          fit: BoxFit.scaleDown,
                        )),
                    const SizedBox(height: 20, width: 70),
                    const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'CONNEXION',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 47, 34, 125)),
                          ),
                        )),
                    const SizedBox(height: 50),
                    const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Veuillez entrer vos identifiants ci-dessous',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        )),
                    const SizedBox(height: 50),
                    TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Merci de saisir votre e-mail");
                          }
                          //reg expression for email validation
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return ("Entrez un e-mail valide");
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value!;
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.mail,
                            color: Color.fromARGB(255, 120, 196, 255),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Adresse e-mail",
                          hintStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 9, 9, 9)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                    const SizedBox(height: 15),
                    TextFormField(
                        autofocus: false,
                        obscureText: true,
                        validator: (value) {
                          RegExp regex = RegExp(r'^.{6,}$');
                          if (value!.isEmpty) {
                            return ("Merci de saisir votre mot de passe");
                          }
                          if (!regex.hasMatch(value)) {
                            return ("veuillez valider votre mot de passe (Min. 6 Charater)");
                          }
                        },
                        onSaved: (value) {
                          password = value!;
                        },
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 120, 196, 255),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Mot de passe",
                          hintStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 9, 9, 9)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                    const SizedBox(height: 25),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 254, 74, 152),
                      child: MaterialButton(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            signIn();
                          },
                          child: const Text(
                            "Connexion ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ));
  }

  //login function
  void signIn() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: email.trim(), password: password);

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => page()));
      } on FirebaseAuthException catch (e) {
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                title: Text("Ops! Login Failed"),
                content: Text('${e.message}')));
      }
    }
  }
}
