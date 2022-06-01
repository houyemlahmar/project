import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/Formulaire/FormulaireViewModel.dart';
import 'package:stacked/stacked.dart';

class FormulaireView extends StatelessWidget {
  FormulaireView({Key? key}) : super(key: key);

  String? selectedValue;

  final List<DropdownMenuItem<String>> _dropDownMenuItems =
      FormulaireViewModel.regions
          .map(
            (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
          )
          .toList();
  final List<DropdownMenuItem<String>> _dropDownCollection1 =
      FormulaireViewModel.adresses
          .map(
            (String val1) => DropdownMenuItem<String>(
              value: val1,
              child: Text(val1),
            ),
          )
          .toList();
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
          ListTile(
            title: const Text('Région:'),
            trailing: DropdownButton<String>(
              // Must be one of items.value.
              value: model.selectedRegion,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  model.setSelectedRegion(newValue);
                  
                }
              },
              items: _dropDownMenuItems,
            ),
          ),
          const SizedBox(height: 15),
          ListTile(
            title: const Text('Adresse:'),
            trailing: DropdownButton<String>(
              // Must be one of items.value.
              value: model.selectedAdresse,
              onChanged: (String? newVal1) {
                if (newVal1 != null) {
                  model.setSelectedAdresse(newVal1);
                }
              },
              items: _dropDownCollection1,
            ),
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
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime(2022, 1, 1),
              onDateTimeChanged: (DateTime newDateTime) {
                // Do something
              },
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
              onPressed:
                model.createDemande,
             
            ),
          ),
        ])),
      ),
      viewModelBuilder: () => FormulaireViewModel(),
    );
  }
}
