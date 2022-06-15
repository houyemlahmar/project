import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/screens/technicien/construction/construction_detail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ConstructionDetailView extends StatelessWidget {
  final ConstructionModel construction;
  const ConstructionDetailView({Key? key, required this.construction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<modefiertechnicienviewmodel>.reactive(
      onModelReady: (model) => model.getUser(construction.userId),
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
            : Column(children: [Text("${viewModel.user?.firstname}")]),
      ),
      viewModelBuilder: () => modefiertechnicienviewmodel(),
    );
  }
}
