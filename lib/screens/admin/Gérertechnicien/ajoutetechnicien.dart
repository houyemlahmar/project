import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:login/Model/techModel.dart';

class ajoutertechnicien extends StatefulWidget {
  const ajoutertechnicien({Key? key}) : super(key: key);
  @override
  State<ajoutertechnicien> createState() => _ajoutertechnicienState();
}

class _ajoutertechnicienState extends State<ajoutertechnicien> {
  final controllerNom = TextEditingController();
  final controllerPrenom = TextEditingController();
  final controllerZone = TextEditingController();
  final controllerNumtele = TextEditingController();
  final controllerCIN = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Ajouter technicien'),
          backgroundColor: Colors.blue.shade200,
          toolbarHeight: 60,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
              color: Colors.blue.shade200),
        ),
        body: ListView(padding: EdgeInsets.all(16), children: <Widget>[
          TextField(
            controller: controllerNom,
            decoration: InputDecoration(labelText: 'Nom '),
          ),

          const SizedBox(height: 24),
          TextField(
            controller: controllerPrenom,
            decoration: InputDecoration(labelText: 'Prénom'),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controllerZone,
            decoration: InputDecoration(labelText: 'Zone'),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: controllerNumtele,
            decoration: InputDecoration(labelText: 'Num Télé'),
            keyboardType: TextInputType.number,
          ), // TextField// TextField// TextField// TextField
          const SizedBox(height: 24),

          TextField(
            controller: controllerCIN,
            decoration: InputDecoration(labelText: 'CIN'),
            keyboardType: TextInputType.number,
          ),

          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue.shade200),
            child: Text('Enregistre'),
            onPressed: () {
              final usertechnicien = tech(
                Nom: controllerNom.text,
                Prenom: controllerPrenom.text,
                Zone: controllerZone.text,
              ); // User
              createtech(usertechnicien);

              Navigator.pop(context);
            },
          ), // ElevatedButton
        ]),
      );

  Future createtech(tech usertechnicien) async {
    final doctech = FirebaseFirestore.instance.collection('Technicien').doc();

    usertechnicien.id = doctech.id;
    final json = usertechnicien.toJson();
    await doctech.set(json);
  }
}
