import 'package:flutter/material.dart';
import 'package:login/screens/technicien/construction/constructionView.dart';
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
          title: const Text('TECHNICIEN'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => signintechnicien()));
              },
              color: Colors.grey),
        ),
        backgroundColor: Colors.indigo[50],
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.indigo[50],
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(children: [
                  Image.asset("assets/technicien.jpg",
                      height: 250, width: 350, fit: BoxFit.fitWidth),
                  const SizedBox(height: 0),
                  PrimaryButton(
                      iconData: Icons.perm_contact_calendar_rounded,
                      title: "Listes des constructions",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConstructionView()));
                      }),
                  const SizedBox(height: 10),
                  PrimaryButton(
                      iconData: Icons.perm_contact_calendar_rounded,
                      title: "Constructions traitées",
                      onPressed: () {}),
                  const SizedBox(height: 10),
                  PrimaryButton(
                      iconData: Icons.logout_rounded,
                      title: "Déconnexion",
                      onPressed: () {}),
                  const SizedBox(height: 10),
                ]),
              ),
            ),
          ),
        ));
  }
}
