import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/user_model.dart';

import 'package:login/screens/admin//client/clientViewModel.dart';
import 'package:login/screens/admin/page.dart';
import 'package:stacked/stacked.dart';

class consulterclientView extends StatelessWidget {
  const consulterclientView({Key? key}) : super(key: key);

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
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page()));
              },
              color: Colors.grey),
        ),
        backgroundColor: Colors.indigo[50],
        body: StreamBuilder(
          stream: viewmodel.consts,
          builder: (context, AsyncSnapshot<List<UserModel>> snapshots) {
            if (snapshots.hasData) {
              return ListView.builder(
                  itemCount: snapshots.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    var model = snapshots.data![index];
                    return Container(
                      child: Text(
                          "Nom :${model.firstname} ,Prénome :${model.lastname} "),
                    );
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
