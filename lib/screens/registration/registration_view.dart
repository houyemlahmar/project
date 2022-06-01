import 'package:flutter/material.dart';
import 'package:login/Model/user_model.dart';
import 'package:login/screens/SignIn_screen.dart';
import 'package:login/screens/menu-screen.dart';
import 'package:login/screens/registration/registration_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RegistrationView extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RegistrationView({Key? key}) : super(key: key);
  UserModel user = UserModel(id: "");
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistrationViewModel>.reactive(
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
                                key: formKey,
                                child: Column(children: [
                                  TextFormField(
                                      onSaved: (value) {
                                        user.lastname = value;
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
                                          return "le nom ne peut pas être inférieur à 3 lettres";
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
                                        user.firstname = value;
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
                                        user.cin = value;
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
                                        user.phonenumber = value;
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
                                        user.email = value;
                                        model.email = value ?? "";
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
                                        model.password = value ?? "password";
                                      },
                                      validator: (value) {
                                        RegExp regex = RegExp(r'^.{8,}$');
                                        if (value!.isEmpty) {
                                          return ("Merci de saisir votre mot de passe");
                                        }
                                        if (!regex.hasMatch(value)) {
                                          return ("veuillez valider votre mot de passe (Min 8 Charater)");
                                        }
                                      },
                                      obscureText: isHiddenPassword,
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(Icons.vpn_key),
                                          suffixIcon: InkWell(
                                              onTap: _togglePasswordView,
                                              child: Icon(Icons.visibility)),
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
                                        model.password = value ?? "password";
                                      },
                                      validator: (value) {
                                        RegExp regex = RegExp(r'^.{value,}$');
                                        if (value!.isEmpty) {
                                          return ("Merci de confirmer votre mot de passe");
                                        }
                                      },
                                      obscureText: isHiddenPassword,
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(Icons.vpn_key),
                                          suffixIcon: InkWell(
                                              onTap: _togglePasswordView,
                                              child: Icon(Icons.visibility)),
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  20, 15, 20, 15),
                                          hintText: "Confirmer mot de passe",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  Container(
                                      margin: const EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          const Text("Si vous avez un compte"),
                                          InkWell(
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
                                  Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 254, 74, 152),
                                    child: MaterialButton(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        minWidth:
                                            MediaQuery.of(context).size.width,
                                        onPressed: () async {
                                          if (formKey.currentState
                                                  ?.validate() ??
                                              false) {
                                            formKey.currentState?.save();
                                            final response = await model
                                                .register(context, user);

                                            if (response) {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignInScreen()));
                                            }
                                          }
                                        },
                                        child: const Text(
                                          "S'inscrire",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ])),
                          )
                        ]),
                      ))))),
      viewModelBuilder: () => RegistrationViewModel(),
    );
  }

  void _togglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
  }
}
