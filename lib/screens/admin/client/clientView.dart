import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/user_model.dart';

import 'package:login/screens/admin//client/clientViewModel.dart';
import 'package:login/screens/admin/page.dart';
import 'package:stacked/stacked.dart';

class consulterclientView extends StatelessWidget {
  consulterclientView({Key? key}) : super(key: key);

  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<consulterclientViewModel>.reactive(
      onModelReady: (viewmodel) => viewmodel.client(),
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Consulter Client'),
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
              color: Colors.blue[900]),
        ),
        backgroundColor: Colors.indigo[50],
        body: StreamBuilder(
          stream: viewmodel.consts,
          builder: (context, AsyncSnapshot<List<UserModel>> snapshots) {
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
                          "Client",
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
                                    "Nom :${model.lastname}   Prénom :${model.firstname} "),
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
      ),
      viewModelBuilder: () => consulterclientViewModel(),
    );
  }
}
