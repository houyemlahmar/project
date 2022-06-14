import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/Menu/MenuView.dart';
import 'package:login/screens/Message/MessageViewModel.dart';
import 'package:login/screens/menu-screen.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;

class MessageView extends StatelessWidget {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MessageViewModel>.reactive(
      onModelReady: (viewmodel) => viewmodel.init(),
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Messages',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Color.fromARGB(255, 245, 207, 70),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuView()));
              },
              color: Colors.white),
          toolbarHeight: 60,
          centerTitle: true,
        ),
        backgroundColor: Colors.indigo[50],
        body: Container(
          child: ListView(children: <Widget>[
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
                                    child: Text(" ${model.message}   "),
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
                                        Icon(Icons.delete),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2.0),
                                        ),
                                        Text('Supprimer'),
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
      viewModelBuilder: () => MessageViewModel(),
    );
  }
}
