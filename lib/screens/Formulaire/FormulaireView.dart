import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/Formulaire/FormulaireViewModel.dart';
import 'package:stacked/stacked.dart';

class FormulaireView extends StatefulWidget {
  const FormulaireView({Key? key}) : super(key: key);

  @override
  State<FormulaireView> createState() => _FormulaireViewState();
}

class _FormulaireViewState extends State<FormulaireView> {
  String? selectedValue;

  final List<DropdownMenuItem<String>> _dropDownMenuItems =
      FormulaireViewModel.menuItems
          .map(
            (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
          )
          .toList();
  final List<DropdownMenuItem<String>> _dropDownCollection =
      FormulaireViewModel.collection
          .map(
            (String val) => DropdownMenuItem<String>(
              value: val,
              child: Text(val),
            ),
          )
          .toList();
  final List<DropdownMenuItem<String>> _dropDownItem =
      FormulaireViewModel.Item.map(
    (String value1) => DropdownMenuItem<String>(
      value: value1,
      child: Text(value1),
    ),
  ).toList();
  var date;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  var _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  String _btn1SelectedVal = 'Sahloul';
  String _btn2SelectedVal = 'WAFFI';
  String _btn3SelectedVal = '8';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FormulaireViewModel>.reactive(
      onModelReady: (model) => model.GetUser(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(children: <Widget>[
          SizedBox(
              height: 150,
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
              value: _btn1SelectedVal,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() => _btn1SelectedVal = newValue);
                }
              },
              items: _dropDownMenuItems,
            ),
          ),
          const SizedBox(height: 15),
          ListTile(
            title: const Text('Offre:'),
            trailing: DropdownButton<String>(
              // Must be one of items.value.
              value: _btn2SelectedVal,
              onChanged: (String? newVal) {
                if (newVal != null) {
                  setState(() => _btn2SelectedVal = newVal);
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
              value: _btn3SelectedVal,
              onChanged: (String? newValue1) {
                if (newValue1 != null) {
                  setState(() => _btn3SelectedVal = newValue1);
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
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text("Enregistrer", textAlign: TextAlign.center),
              onPressed: () {},
            ),
          ),
        ])),
      ),
      viewModelBuilder: () => FormulaireViewModel(),
    );
  }
}
