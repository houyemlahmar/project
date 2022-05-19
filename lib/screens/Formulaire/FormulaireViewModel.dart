import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/Model/construction_model.dart';
import 'package:stacked/stacked.dart';

class FormulaireViewModel extends BaseViewModel {
  static const regions = <String>[
    'Sahloul',
    'Hammam Sousse',
    'Kalaa Kbira',
    'Akouda'
  ];
  String selectedRegion = 'Sahloul';
  String selectedOffer = 'WAFFI';
  String selectedDebit = '8';
  static const offers = <String>[
    'WAFFI',
    'ADSL',
    'VDSL',
    'Gros XDSL',
    'Fibre Optique'
  ];
  static const debits = <String>[
    '8',
    '10',
    '12',
    '20',
    '100',
  ];

  setSelectedOffer(String offer) {
    selectedOffer = offer;
    notifyListeners();
  }

  setSelectedRegion(String region) {
    selectedRegion = region;
    notifyListeners();
  }

  setSelectedDebit(String debit) {
    selectedDebit = debit;
    notifyListeners();
  }

  createDemande() {
    final collection =
        FirebaseFirestore.instance.collection('construction').doc();

    collection.set(ConstructionModel(
      debit : int.parse(selectedDebit),
      etatDemande: "new",
      offre :selectedOffer,
      userId: FirebaseAuth.instance.currentUser?.uid
    ).toJson());
  }
}
