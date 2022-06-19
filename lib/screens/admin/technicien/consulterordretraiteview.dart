import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/admin/technicien/consulterordretraiteviewmodel.dart';
import 'package:login/screens/admin/technicien/gerertechnicienView.dart';
import 'package:login/screens/technicien/Menu.dart';
import 'package:login/screens/technicien/constructiontrait%C3%A9es/constructiontrait%C3%A9eViewModel.dart';

import 'package:stacked/stacked.dart';

class ordretraiteview extends StatefulWidget {
  const ordretraiteview({Key? key}) : super(key: key);

  @override
  State<ordretraiteview> createState() => _ordretraiteviewState();
}

class _ordretraiteviewState extends State<ordretraiteview> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ordretraiteviewmodel>.reactive(
      onModelReady: (viewmodel) => viewmodel.init(),
      builder: (context, viewmodel, child) => Scaffold(
          appBar: AppBar(
            title: const Text('Ordres traités'),
            flexibleSpace: const Image(
              image: AssetImage('assets/TT2.png'),
              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.blue[100],
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GerertechnicienView()));
                },
                color: Colors.blue),
            toolbarHeight: 60,
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
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

                      return ExpansionTileCard(
                          baseColor: Colors.blue[50],
                          expandedColor: Colors.blue[50],
                          title: Text(
                            "",
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
                                      "Offre : ${model.offre}                                                                    Débit : ${model.debit}                                                                 Référence : ${model.reference}   "),
                                )),
                          ]);
                    },
                  );
                }
                return Container();
              })),
      viewModelBuilder: () => ordretraiteviewmodel(),
    );
    // Container
  }
}
