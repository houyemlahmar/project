import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/Demande/DemandeViewModel.dart';

import 'package:login/screens/Formulaire/FormulaireView.dart';
import 'package:login/screens/Menu/MenuView.dart';
import 'package:stacked/stacked.dart';

class DemandeView extends StatelessWidget {
  const DemandeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DemandeViewModel>.reactive(
      onModelReady: (viewmodel) => viewmodel.init(),
      builder: (context, viewmodel, child) => Scaffold(
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Text("Déclarer une construction",
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormulaireView()));
              },
            ),
            Expanded(
              child: StreamBuilder(
                  stream: viewmodel.consts,
                  builder: (context,
                      AsyncSnapshot<List<ConstructionModel>> snapshots) {
                    if (snapshots.hasData) {
              
                      return ListView.builder(
                          itemCount: snapshots.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            var model = snapshots.data![index];
                            return Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text("${model.offre}"),
                            );
                          });
                    }

                    return Container();
                  }),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => DemandeViewModel(),
    );
  }
}
