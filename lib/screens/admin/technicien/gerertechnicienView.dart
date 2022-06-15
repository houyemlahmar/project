import 'package:expansion_tile_card/expansion_tile_card.dart';
import "package:flutter/material.dart";
import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/page.dart';
import 'package:login/screens/admin/technicien/ajoutetechnicienView.dart';
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
          backgroundColor: Colors.blue[300],
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

        body: Column(
          children: [
            SizedBox(height: 15),
            StreamBuilder(
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
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start ,
                                      children: [
                                        Text(
                                            "Nom : ${model.Nom}   Prénom : ${model.Prenom}      CIN : ${model.CIN}  Numéro tél : ${model.Numtele}   "),
                                      
                                      Text ("Zone : ${model.region}")
                                      ],
                                    ),
                                  )
                                  ),
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
                                    child: Row(children: [
                                      Column(
                                        children: [
                                          IconButton(
                                              icon: const Icon(
                                                  Icons.details_rounded),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            modefiertechnicienview(
                                                                tech: model)));
                                              }),
                                          SizedBox(width: 50),
                                          IconButton(
                                            icon: const Icon(Icons.delete),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 6.0),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ]),
                                  )
                                ],
                              )
                            ]);
                      });
                }
                return Container();
              },
            ),
          ],
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
