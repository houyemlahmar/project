import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/region_model.dart';

import 'package:login/Model/technicien_model.dart';
import 'package:login/screens/admin/technicien/modefiertzchnicienviewmodel.dart';

import 'package:stacked/stacked.dart';

class modefiertechnicienview extends StatelessWidget {
  final techModel tech;
  const modefiertechnicienview({Key? key, required this.tech})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<modefiertechnicienviewmodel>.reactive(
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
        body: StreamBuilder<List<RegionModel>>(
          stream: viewModel.getRegions(),
          builder: (BuildContext context,
              AsyncSnapshot<List<RegionModel>> snapshot) {
            // Safety check to ensure that snapshot contains data
            // without this safety check, StreamBuilder dirty state warnings will be thrown
            if (!snapshot.hasData) return Container();
            // Set this value for default,
            // setDefault will change if an item was selected
            // First item from the List will be displayed
            var data = snapshot.data;
            var defaultRegion = data
                ?.firstWhere((element) => element.id_region == tech.id_region);
            return Row(
              children: [
                Text('Région'),
                const SizedBox(width: 20),
                DropdownButton<RegionModel>(
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconSize: 15,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  isExpanded: false,
                  value: viewModel.selectedRegion ?? defaultRegion,
                  items: snapshot.data!.map((region) {
                    return DropdownMenuItem<RegionModel>(
                      value: region,
                      child: Text('${region.nom}'),
                    );
                  }).toList(),
                  onChanged: viewModel.setSelectedRegion,
                ),
                IconButton(
                    onPressed: () {
                      viewModel.updateRegion(tech.id);
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.check))
              ],
            );
          },
        ),
      ),
      viewModelBuilder: () => modefiertechnicienviewmodel(),
    );
  }
}
