import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/technicien/Menu.dart';
import 'package:login/screens/technicien/constructiontrait%C3%A9es/constructiontrait%C3%A9eViewModel.dart';

import 'package:stacked/stacked.dart';

class ConstructiontraiteView extends StatefulWidget {
  const ConstructiontraiteView({Key? key}) : super(key: key);

  @override
  State<ConstructiontraiteView> createState() => _ConstructiontraiteViewState();
}

class _ConstructiontraiteViewState extends State<ConstructiontraiteView> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConstructiontraiteViewModel>.reactive(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => technicien()));
              },
              color: Colors.blue),
          toolbarHeight: 60,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 20),
              StreamBuilder(
                  stream: viewmodel.consts,
                  builder: (context,
                      AsyncSnapshot<List<ConstructionModel>> snapshots) {
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
                                "Ordre traités",
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
                  })
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ConstructiontraiteViewModel(),
    );
    // Container
  }
}
