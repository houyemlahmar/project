import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/region_model.dart';
import 'package:login/Model/rue_model.dart';
import 'package:login/screens/Formulaire/FormulaireViewModel.dart';
import 'package:stacked/stacked.dart';

class FormulaireView extends StatelessWidget {
  FormulaireView({Key? key}) : super(key: key);

  String? selectedValue;

  final List<DropdownMenuItem<String>> _dropDownCollection =
      FormulaireViewModel.offers
          .map(
            (String val) => DropdownMenuItem<String>(
              value: val,
              child: Text(val),
            ),
          )
          .toList();
  final List<DropdownMenuItem<String>> _dropDownItem =
      FormulaireViewModel.debits
          .map(
            (String value1) => DropdownMenuItem<String>(
              value: value1,
              child: Text(value1),
            ),
          )
          .toList();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FormulaireViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(children: <Widget>[
          SizedBox(
              height: 90,
              width: 170,
              child: Image.asset(
                "assets/appbar.jpeg",
                fit: BoxFit.scaleDown,
              )),
          const SizedBox(height: 80),
          StreamBuilder<List<RegionModel>>(
            stream: model.getRegions(),
            builder: (BuildContext context,
                AsyncSnapshot<List<RegionModel>> snapshot) {
              // Safety check to ensure that snapshot contains data
              // without this safety check, StreamBuilder dirty state warnings will be thrown
              if (!snapshot.hasData) return Container();
              // Set this value for default,
              // setDefault will change if an item was selected
              // First item from the List will be displayed

              return ListTile(
                title: const Text('Région:'),
                trailing: DropdownButton<RegionModel>(
                  isExpanded: false,
                  value: model.selectedRegion,
                  items: snapshot.data!.map((region) {
                    return DropdownMenuItem<RegionModel>(
                      value: region,
                      child: Text('${region.nom}'),
                    );
                  }).toList(),
                  onChanged: model.setSelectedRegion,
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          StreamBuilder<List<RegionModel>>(
            stream: model.codepostal,
            builder: (BuildContext context,
                AsyncSnapshot<List<RegionModel>> snapshot) {
              // Safety check to ensure that snapshot contains data
              // without this safety check, StreamBuilder dirty state warnings will be thrown
              if (!snapshot.hasData) return Container();
              // Set this value for default,
              // setDefault will change if an item was selected
              // First item from the List will be displayed

              return ListTile(
                title: const Text('Code postal:'),
                trailing: DropdownButton<RegionModel>(
                  isExpanded: false,
                  value: model.selectedCodepostal,
                  items: snapshot.data!.map((codepostal) {
                    return DropdownMenuItem<RegionModel>(
                      value: codepostal,
                      child: Text('${codepostal.nom}'),
                    );
                  }).toList(),
                  onChanged: model.setSelectedCodepostal,
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          StreamBuilder<List<RueModel>>(
            stream: model.rues,
            builder:
                (BuildContext context, AsyncSnapshot<List<RueModel>> snapshot) {
              // Safety check to ensure that snapshot contains data
              // without this safety check, StreamBuilder dirty state warnings will be thrown
              if (!snapshot.hasData) return Container();
              // Set this value for default,
              // setDefault will change if an item was selected
              // First item from the List will be displayed

              return ListTile(
                title: const Text('Rue:'),
                trailing: DropdownButton<RueModel>(
                  isExpanded: false,
                  value: model.selectedRue,
                  items: snapshot.data!.map((rue) {
                    return DropdownMenuItem<RueModel>(
                      value: rue,
                      child: Text('${rue.nom}'),
                    );
                  }).toList(),
                  onChanged: model.setSelectedRue,
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          ListTile(
            title: const Text('Offre:'),
            trailing: DropdownButton<String>(
              // Must be one of items.value.
              value: model.selectedOffer,
              onChanged: (String? newVal) {
                if (newVal != null) {
                  model.setSelectedOffer(newVal);
                }
              },
              items: _dropDownCollection,
            ),
          ),
          const SizedBox(height: 15),
          ListTile(
            title: const Text('Débit:'),
            trailing: DropdownButton<String>(
              // Must be one of items.value.
              value: model.selectedDebit,
              onChanged: (String? newValue1) {
                if (newValue1 != null) {
                  model.setSelectedDebit(newValue1);
                }
              },
              items: _dropDownItem,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text("Enregistrer", textAlign: TextAlign.center),
              onPressed: model.createDemande,
            ),
          ),
        ])),
      ),
      viewModelBuilder: () => FormulaireViewModel(),
    );
  }
}
