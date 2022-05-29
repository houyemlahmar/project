import 'package:expansion_tile_card/expansion_tile_card.dart';
import "package:flutter/material.dart";
import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/page.dart';
import 'package:login/screens/admin/technicien/ajoutetechnicienView.dart';
import 'package:login/screens/admin/technicien/gerertechnicienViewModel.dart';
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
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Liste Techniciens'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue.shade200,
          toolbarHeight: 60,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page()));
              },
              color: Colors.blue.shade200),
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
                        leading: CircleAvatar(),
                        title: const Text(
                          "Technicien",
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
                                child: Text(
                                    "Nom :${model.Nom} ,Prénom :${model.Prenom}, Zone :${model.Zone} ,CIN :${model.CIN}, Numero_téléphone :${model.Numtele} }  "),
                              )),
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceAround,
                            buttonHeight: 52.0,
                            buttonMinWidth: 90.0,
                            children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0)),
                                ),
                                onPressed: () {
                                  cardA.currentState?.collapse();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(Icons.arrow_upward),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AjouterTechnicienView()));
          },
          child: const Icon(
            Icons.add,
            size: 20,
          ),
        ),

        // IconButton
        // AppBar
      ),
      viewModelBuilder: () => geretechnicienVieModel(),
    ); // Scaffold
  }
}
