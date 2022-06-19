import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:login/Model/region_model.dart';
import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/technicien/ajoutertechnicienViewModel.dart';
import 'package:login/screens/admin/technicien/gerertechnicienView.dart';
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
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue.shade300,
          toolbarHeight: 60,
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GerertechnicienView()));
              },
              color: Colors.white),
        ),
        body: ListView(padding: EdgeInsets.all(16), children: <Widget>[
          TextField(
            controller: controllerNom,
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Nom '),
          ),

          const SizedBox(height: 20),
          TextField(
            controller: controllerPrenom,
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Prénom'),
          ),
          const SizedBox(height: 20),
          StreamBuilder<List<RegionModel>>(
            stream: model.getRegions(),
            builder: (BuildContext context,
                AsyncSnapshot<List<RegionModel>> snapshot) {
              // Safety check to ensure that snapshot contains data
              // without this safety check, StreamBuilder dirty state warnings will be thrown
              if (!snapshot.hasData) return Container();
              // Set this value for default,
              // setDefault will change if an item was selected
              // First item from the List will be displayed

              return Row(
                children: [
                  Text('Région'),
                  const SizedBox(width: 20),
                  DropdownButton<RegionModel>(
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 15,
                    elevation: 16,
                    style: TextStyle(color: Colors.black),
                    isExpanded: false,
                    value: model.selectedRegion,
                    items: snapshot.data!.map((region) {
                      return DropdownMenuItem<RegionModel>(
                        value: region,
                        child: Text('${region.nom}'),
                      );
                    }).toList(),
                    onChanged: model.setSelectedRegion,
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controllerNumtele,
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Numéro téléphone'),
            keyboardType: TextInputType.number,
            maxLength: 8,
          ), // TextField// TextField// TextField// TextField
          const SizedBox(height: 24),

          TextField(
            controller: controllerCIN,
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'CIN'),
            keyboardType: TextInputType.number,
            maxLength: 8,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controlleremail,
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Adresse e-mail'),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: controllerpassword,
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off),
                isDense: true,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Mot de passe'),
            keyboardType: TextInputType.text,
          ),

          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 8, 82, 143)),
            child: Text('Enregistrer'),
            onPressed: () {
              techModel tech = techModel();
              tech.Nom = controllerNom.text;
              tech.Prenom = controllerPrenom.text;
              tech.region = controllerRegion.text;
              tech.CIN = controllerCIN.text;
              tech.Numtele = controllerNumtele.text;

              model.createjoute(
                  tech, context, controlleremail.text, controllerpassword.text);
              Navigator.pop(context);
            },
          ), // ElevatedButton
        ]),
      ),
      viewModelBuilder: () => AjouterTechnicienViewModel(),
    );
  }
}
