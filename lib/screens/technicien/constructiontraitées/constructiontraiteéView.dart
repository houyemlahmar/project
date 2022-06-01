import 'package:flutter/material.dart';
import 'package:login/screens/technicien/Menu.dart';
import 'package:login/screens/technicien/constructiontrait%C3%A9es/constructiontrait%C3%A9eViewModel.dart';

import 'package:stacked/stacked.dart';

class ConstructiontraiteView extends StatefulWidget {
  const ConstructiontraiteView({Key? key}) : super(key: key);

  @override
  State<ConstructiontraiteView> createState() => _ConstructiontraiteViewState();
}

class _ConstructiontraiteViewState extends State<ConstructiontraiteView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConstructiontraiteViewModel>.reactive(
      onModelReady: (model) => model.Gettraite(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Ordres traités'),
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
        backgroundColor: Colors.white,
      ),
      viewModelBuilder: () => ConstructiontraiteViewModel(),
    );
    // Container
  }
}
