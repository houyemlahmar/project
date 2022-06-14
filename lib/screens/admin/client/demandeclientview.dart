import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/user_model.dart';
import 'package:login/screens/admin/client/demandeclientviewmodel.dart';
import 'package:login/screens/technicien/construction/construction_detail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class demandeclientview extends StatelessWidget {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<demandeclientviewmodel>.reactive(
      onModelReady: (viewmodel) => viewmodel.getconstructions(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Utilisateur du demande'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue[100],
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.blue),
          toolbarHeight: 60,
          centerTitle: true,
        ),
        backgroundColor: Colors.indigo[50],
        body: Container(
          child: ListView(children: <Widget>[
            StreamBuilder(
              stream: viewModel.consts,
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
                            expandedColor: Colors.cyan[50],
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
      ),
      viewModelBuilder: () => demandeclientviewmodel(),
    );
  }
}
