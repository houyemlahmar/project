import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/technicien/ajoutertechnicienViewModel.dart';
import 'package:stacked/stacked.dart';

class ajoutertechnicienView extends StatefulWidget {
  const ajoutertechnicienView({Key? key}) : super(key: key);
  @override
  State<ajoutertechnicienView> createState() => _ajoutertechnicienViewState();
}

class _ajoutertechnicienViewState extends State<ajoutertechnicienView> {
  final controllerNom = TextEditingController();
  final controllerPrenom = TextEditingController();
  final controllerZone = TextEditingController();
  final controllerNumtele = TextEditingController();
  final controllerCIN = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ajoutertechnicienViewModel>.reactive(
      onModelReady: (model) => model.createjoute(),
      builder: (context, model, child) => Scaffold(
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
            decoration: InputDecoration(labelText: 'Numéro téléphone'),
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
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 8, 82, 143)),
            child: Text('Enregistre'),
            onPressed: model.createjoute(),
          ), // ElevatedButton
        ]),
      ),
      viewModelBuilder: () => ajoutertechnicienViewModel(),
    );
  }
}