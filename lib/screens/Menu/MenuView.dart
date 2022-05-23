import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/Demande/DemandeView.dart';
import 'package:login/screens/Home/Homeview.dart';
import 'package:login/screens/Home_screen.dart';
import 'package:login/screens/Message/MessageView.dart';
import 'package:login/screens/premier_screen.dart';
import 'package:login/widgets/primary_button.dart';
import 'package:stacked/stacked.dart';

import 'MenuViewModel.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuViewModel>.reactive(
      onModelReady: (model) => model.getUser(),
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
              title: Image.asset('assets/appbar.jpeg', fit: BoxFit.cover),
              toolbarHeight: 100,
              backgroundColor: Colors.white),
          backgroundColor: Colors.indigo[50],
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.indigo[50],
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(children: [
                    Image.asset("assets/mendari1.jpeg",
                        height: 300, width: 350, fit: BoxFit.fitWidth),
                    PrimaryButton(
                        iconData: Icons.list_alt,
                        title: "Demandes",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DemandeView()));
                        }),
                    const SizedBox(height: 10),
                    PrimaryButton(
                        iconData: Icons.portrait_rounded,
                        title: "Profil",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeView()));
                        }),
                    const SizedBox(height: 10),
                    PrimaryButton(
                        iconData: Icons.message,
                        title: "Messages",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageView()));
                        }),
                    const SizedBox(height: 10),
                    PrimaryButton(
                        iconData: Icons.logout_rounded,
                        title: "Déconnexion",
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => premierScreen()));
                        }),
                  ]),
                ),
              ),
            ),
          )),
      viewModelBuilder: () => MenuViewModel(),
    );
  }
}
