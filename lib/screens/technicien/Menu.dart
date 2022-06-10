import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/premier_screen.dart';
import 'package:login/screens/technicien/construction/constructionView.dart';
import 'package:login/screens/technicien/constructiontrait%C3%A9es/constructiontraite%C3%A9View.dart';
import 'package:login/screens/technicien/signin.dart';
import 'package:login/widgets/primary_button.dart';

class technicien extends StatelessWidget {
  const technicien({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Technicien',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue[100],
          toolbarHeight: 60,
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => signintechnicien()));
              },
              color: Colors.blue),
        ),
        backgroundColor: Colors.indigo[50],
        body: ListView(children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.indigo[50],
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(children: [
                  Image.asset("assets/technicien.jpg",
                      height: 250, width: 350, fit: BoxFit.fitWidth),
                  const SizedBox(height: 30),
                  PrimaryButton(
                      iconData: Icons.perm_contact_calendar_rounded,
                      title: "Orders des travaux",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConstructionView()));
                      }),
                  const SizedBox(height: 20),
                  PrimaryButton(
                      iconData: Icons.perm_contact_calendar_rounded,
                      title: "Ordres traités",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ConstructiontraiteView()));
                      }),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 10),
                ]),
              ),
            ),
          ),
        ]));
  }
}
