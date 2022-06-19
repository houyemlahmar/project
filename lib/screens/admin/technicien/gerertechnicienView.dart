import 'package:expansion_tile_card/expansion_tile_card.dart';

import "package:flutter/material.dart";
import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/page.dart';
import 'package:login/screens/admin/technicien/ajoutetechnicienView.dart';
import 'package:login/screens/admin/technicien/consulterdedemandeview.dart';
import 'package:login/screens/admin/technicien/consulterordretraiteview.dart';
import 'package:login/screens/admin/technicien/gerertechnicienViewModel.dart';
import 'package:login/screens/admin/technicien/modefiertehnicienview.dart';
import 'package:login/screens/technicien/Menu.dart';
import 'package:stacked/stacked.dart';

class GerertechnicienView extends StatefulWidget {
  const GerertechnicienView({Key? key}) : super(key: key);
  @override
  State<GerertechnicienView> createState() => _GerertechnicienViewState();
}

class _GerertechnicienViewState extends State<GerertechnicienView> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<geretechnicienVieModel>.reactive(
      onModelReady: (viewmodel) => viewmodel.init,
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Liste des Techniciens'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue.shade200,
          toolbarHeight: 60,
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page()));
              },
              color: Colors.white),
        ),
        backgroundColor: Colors.indigo[50],

        body: StreamBuilder(
          stream: viewmodel.getgere(),
          builder: (context, AsyncSnapshot<List<techModel>> snapshots) {
            if (snapshots.hasData) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshots.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    var model = snapshots.data![index];

                    return ExpansionTileCard(
                        baseColor: Colors.cyan[50],
                        expandedColor: Colors.red[50],
                        title: Text(
                          " ${model.region} ",
                          style: TextStyle(fontSize: 20),
                        ),
                        children: <Widget>[
                          const Divider(
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Nom : ${model.Nom}   Prénom : ${model.Prenom} \nCIN : ${model.CIN} \n Numéro tél : ${model.Numtele} \n  "),
                                    Text("Zone : ${model.region}")
                                  ],
                                ),
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
                                    child: Row(
                                      children: [
                                        Column(children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0)),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          modefiertechnicienview(
                                                              tech: model)));
                                            },
                                            child: Column(
                                              children: <Widget>[
                                                Icon(Icons.edit),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2.0),
                                                ),
                                                Text('Modifier'),
                                              ],
                                            ),
                                          ),
                                        ]),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0)),
                                          ),
                                          onPressed: () {
                                            viewmodel
                                                .deletetechnicien(model.id);
                                          },
                                          child: Column(
                                            children: <Widget>[
                                              Icon(Icons.delete),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 2.0),
                                              ),
                                              Text('Supprimer'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                              ]),
                        ]);
                  });
            }
            return Container();
          },
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade300,
          child: const Icon(Icons.add, color: Colors.white),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AjouterTechnicienView()));
          },
        ),
        bottomNavigationBar: new BottomAppBar(
          color: Colors.blue.shade200,
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.list_rounded,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => consulterdemandeview()));
                },
              ),
              SizedBox(
                width: 250,
              ),
              IconButton(
                icon: Icon(
                  Icons.task_alt_outlined,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ordretraiteview()));
                },
              ),
            ],
          ),
        ),

        // IconButton
        // AppBar
      ),
      viewModelBuilder: () => geretechnicienVieModel(),
    ); // Scaffold
  }
}
