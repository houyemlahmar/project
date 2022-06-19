import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/technicien/Menu.dart';
import 'package:login/screens/technicien/construction/constructionViewModel.dart';
import 'package:login/screens/technicien/construction/construction_detail.dart';
import 'package:stacked/stacked.dart';

class ConstructionView extends StatelessWidget {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConstructionViewModel>.reactive(
      onModelReady: (viewmodel) => viewmodel.init(),
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Ordres des travaux'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.blue[100],
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => technicien()));
              },
              color: Colors.blue),
          toolbarHeight: 60,
          centerTitle: true,
        ),
        backgroundColor: Colors.indigo[50],
        body: StreamBuilder(
            stream: viewmodel.consts,
            builder:
                (context, AsyncSnapshot<List<ConstructionModel>> snapshots) {
              if (snapshots.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshots.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      var model = snapshots.data![index];

                      var user = viewmodel.users
                          .firstWhere((element) => element.id == model.userId);

                      return ExpansionTileCard(
                          baseColor: model.getColor().withAlpha(50),
                          expandedColor: Colors.red[50],
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
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Prénom :${user.firstname}   Nom :${user.lastname}\n "),
                                      Text(
                                          " Adresse : ${model.id_rue}\n  Numéro tel :${user.phonenumber}\n Numéro fixe: ${model.num}\n Offre : ${model.offre}  \n Débit : ${model.debit}\n Référence : ${model.reference}         "),
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
                                    viewmodel.validate(model.id);
                                  },
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.task_alt_outlined,
                                        color: Color.fromARGB(255, 63, 209, 68),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2.0),
                                      ),
                                      Text(
                                        'Valider',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 63, 209, 68),
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0)),
                                  ),
                                  onPressed: () {
                                    viewmodel.encours(model.id);
                                  },
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.published_with_changes_outlined,
                                        color: Color.fromARGB(255, 63, 209, 68),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2.0),
                                      ),
                                      Text(
                                        'En Cours',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 63, 209, 68),
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ]);
                    });
              }
              return Container();
            }),
      ),
      viewModelBuilder: () => ConstructionViewModel(),
    );
    // Container
  }
}
