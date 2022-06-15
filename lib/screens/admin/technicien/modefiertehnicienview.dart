import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/technicien/modefiertzchnicienviewmodel.dart';

import 'package:stacked/stacked.dart';

class modefiertechnicienview extends StatelessWidget {
  final techModel Technicien;
  const modefiertechnicienview({Key? key, required this.Technicien})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<modefiertechnicienviewmodel>.reactive(
      onModelReady: (model) => model.getregion(Technicien.id),
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
        body: viewModel.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(children: [Text("${viewModel.User?.id_region}")]),
      ),
      viewModelBuilder: () => modefiertechnicienviewmodel(),
    );
  }
}
