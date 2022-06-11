import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:login/Model/user_model.dart';
import 'package:login/screens/admin/client/demandeclientviewmodel.dart';
import 'package:login/screens/technicien/construction/construction_detail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class demandeclientview extends StatelessWidget {
  final UserModel users;
  const demandeclientview({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<demandeclientviewmodel>.reactive(
      onModelReady: (model) => model.getUser(users.id),
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
            : Column(children: [Text("${viewModel.user?.offre}")]),
      ),
      viewModelBuilder: () => demandeclientviewmodel(),
    );
  }
}
