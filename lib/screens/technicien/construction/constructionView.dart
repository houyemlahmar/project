import 'package:flutter/material.dart';
import 'package:login/screens/technicien/Menu.dart';

class ConstructionView extends StatefulWidget {
  const ConstructionView({Key? key}) : super(key: key);

  @override
  State<ConstructionView> createState() => _ConstructionViewState();
}

class _ConstructionViewState extends State<ConstructionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ORDRES DES TRAVAUX'),
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
              color: Colors.grey),
          toolbarHeight: 100,
        ),
        backgroundColor: Colors.indigo[50],
        body: Stack(children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/font1.jpeg"), fit: BoxFit.cover),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 220,
            width: double.maxFinite,
            child: const Card(
              elevation: 5,
            ),
          )
        ]));
  }
}
