import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/Demande/DemandeViewModel.dart';

import 'package:login/screens/Formulaire/FormulaireView.dart';
import 'package:login/screens/Menu/MenuView.dart';
import 'package:stacked/stacked.dart';

class DemandeView extends StatelessWidget {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DemandeViewModel>.reactive(
      onModelReady: (viewmodel) => viewmodel.init(),
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Liste des demandes',
              style: TextStyle(fontSize: 25, color: Colors.white)),
          backgroundColor: Colors.red[200],
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuView()));
              },
              color: Colors.pink),
          toolbarHeight: 60,
          centerTitle: true,
        ),
        backgroundColor: Colors.indigo[50],
        body: ListView(children: <Widget>[
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text("Déposer une demande",
                style: TextStyle(fontSize: 20, color: Colors.black)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormulaireView()));
            },
          ),
          const SizedBox(height: 20),
          StreamBuilder(
            stream: viewmodel.consts,
            builder:
                (context, AsyncSnapshot<List<ConstructionModel>> snapshots) {
              if (snapshots.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshots.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      var model = snapshots.data![index];
                      return ExpansionTileCard(
                          baseColor: Colors.cyan[50],
                          expandedColor: Colors.red[50],
                          leading: CircleAvatar(),
                          title: Text(
                            "Demande",
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text("${model.createdAt}"),
                          children: <Widget>[
                            Divider(
                              thickness: 1.0,
                              height: 1.0,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 8.0,
                                  ),
                                  child: Text(
                                      "Offre : ${model.offre}    Débit : ${model.debit}                                               Référence : ${model.reference}       Etat : ${model.etatDemande}  "),
                                )),
                            ButtonBar(
                              alignment: MainAxisAlignment.spaceAround,
                              buttonHeight: 52.0,
                              buttonMinWidth: 90.0,
                              children: <Widget>[
                                TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0)),
                                  ),
                                  onPressed: () {
                                    cardA.currentState?.collapse();
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Icon(Icons.arrow_upward),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2.0),
                                      ),
                                      Text('Fermer'),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ]);
                    });
              }
              return Container();
            },
          ),
        ]),
      ),
      viewModelBuilder: () => DemandeViewModel(),
    );
  }
}
