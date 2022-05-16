import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FormulaireViewModel extends BaseViewModel {
  static const menuItems = <String>[
    'Sahloul',
    'Hammam Sousse',
    'Kalaa Kbira',
    'Akouda'
  ];

  String? selectedcollection;
  static const collection = <String>[
    'WAFFI',
    'ADSL',
    'VDSL',
    'Gros XDSL',
    'Fibre Optique'
  ];
  String? selectedItem;
  static const Item = <String>[
    '8',
    '10',
    '12',
    '20',
    '100',
  ];
  GetUser() {}
}
