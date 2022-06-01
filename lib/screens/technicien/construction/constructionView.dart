import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/technicien/Menu.dart';
import 'package:login/screens/technicien/construction/constructionViewModel.dart';
import 'package:stacked/stacked.dart';

class ConstructionView extends StatefulWidget {
  const ConstructionView({Key? key}) : super(key: key);

  @override
  State<ConstructionView> createState() => _ConstructionViewState();
}

class _ConstructionViewState extends State<ConstructionView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConstructionViewModel>.reactive(
      onModelReady: (viewmodel) => viewmodel.init(),
      builder: (context, viewmodel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Ordres de travaux'),
          flexibleSpace: const Image(
            image: AssetImage('assets/TT2.png'),
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => technicien()));
              },
              color: Colors.amberAccent),
          toolbarHeight: 60,
          centerTitle: true,
        ),
        backgroundColor: Colors.indigo[50],
        body: Container(
          child: ListView(
              children: <Widget>[
                StreamBuilder(
                    stream: viewmodel.consts,
                    builder: (context,
                        AsyncSnapshot<List<ConstructionModel>> snapshots) {
                      if (snapshots.hasData) {
                        return ListView.builder(
                            itemCount: snapshots.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              var model = snapshots.data![index];
                              return Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: ListView.builder(
                                    itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    height: 220,
                                    width: double.maxFinite,
                                    child: Card(
                                      elevation: 5,

                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 239, 154, 154),
                                            width: 2),
                                      ), // RoundedRectangleBorder
                                      child: Column(
                                        children: [
                                          Text(
                                              "Offre :${model.offre} ,Débit :${model.debit} , Refrence :${model.reference}"),
                                          Container(
                                            alignment: Alignment.bottomRight,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 18.0,
                                                vertical: 10.0),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.red[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ), // RoundedRectangleBorder
                                              child: Text("Valide",
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              );
                            });
                      }
                      return Container();
                    }),
              ]),
        ),
      ),
      viewModelBuilder: () => ConstructionViewModel(),
    );
    // Container
  }
}
