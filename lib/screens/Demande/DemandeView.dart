import 'package:flutter/material.dart';
import 'package:login/screens/Demande/DemandeViewModel.dart';

import 'package:login/screens/Formulaire/FormulaireView.dart';
import 'package:login/screens/Menu/MenuView.dart';
import 'package:stacked/stacked.dart';

class DemandeView extends StatefulWidget {
  const DemandeView({Key? key}) : super(key: key);
  @override
  State<DemandeView> createState() => _DemandeViewState();
}

class _DemandeViewState extends State<DemandeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<demandeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('LISTE DES DEMANDES'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuView()));
              },
              color: Colors.grey),
          toolbarHeight: 100,
        ),
        backgroundColor: Colors.indigo[50],
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 220,
                    width: double.maxFinite,
                    child: Card(
                      elevation: 5,

                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 239, 154, 154),
                            width: 2),
                      ), // RoundedRectangleBorder
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(border: Border()),
                          ),
                          SizedBox(
                            height: 110,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                minimumSize: const Size.fromHeight(150),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text("Déclarer une construction",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ],
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FormulaireView()));
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            height: 220,
                            width: double.maxFinite,
                            child: Card(
                              elevation: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => demandeViewModel(),
    );
  }
}
