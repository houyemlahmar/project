import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/technicien/ajoutertechnicienViewModel.dart';
import 'package:stacked/stacked.dart';

class AjouterTechnicienView extends StatefulWidget {
  const AjouterTechnicienView({Key? key}) : super(key: key);

  @override
  State<AjouterTechnicienView> createState() => _AjouterTechnicienViewState();
}

class _AjouterTechnicienViewState extends State<AjouterTechnicienView> {
  final controllerNom = TextEditingController();
  final controllerPrenom = TextEditingController();
  final controllerRegion = TextEditingController();
  final controllerNumtele = TextEditingController();
  final controllerCIN = TextEditingController();
  final controlleremail = TextEditingController();
  final controllerpassword = TextEditingController();
  techModel user = techModel(id: "");
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AjouterTechnicienViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Ajouter technicien'),
          backgroundColor: Colors.blue.shade200,
          toolbarHeight: 60,
          centerTitle: true,
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

          const SizedBox(height: 20),
          TextField(
            controller: controllerPrenom,
            decoration: InputDecoration(labelText: 'Prénom'),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controllerRegion,
            decoration: InputDecoration(labelText: 'Région'),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controllerNumtele,
            decoration: InputDecoration(labelText: 'Numéro téléphone'),
            keyboardType: TextInputType.number,
            maxLength: 8,
          ), // TextField// TextField// TextField// TextField
          const SizedBox(height: 24),

          TextField(
            controller: controllerCIN,
            decoration: InputDecoration(labelText: 'CIN'),
            keyboardType: TextInputType.number,
            maxLength: 8,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controlleremail,
            decoration: InputDecoration(labelText: 'Adresse e-mail'),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controllerpassword,
            decoration: InputDecoration(labelText: 'Mot de passe'),
            keyboardType: TextInputType.text,
          ),

          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 8, 82, 143)),
            child: Text('Enregistre'),
            onPressed: () {
              techModel tech = techModel();
              tech.Nom = controllerNom.text;
              tech.Prenom = controllerPrenom.text;
              tech.region = controllerRegion.text;
              tech.CIN = controllerCIN.text;
              tech.Numtele = controllerNumtele.text;
              tech.e_mail = controlleremail.text;
              tech.mp = controllerpassword.text;

              model.createjoute(tech);
              Navigator.pop(context);
            },
          ), // ElevatedButton
        ]),
      ),
      viewModelBuilder: () => AjouterTechnicienViewModel(),
    );
  }
}
