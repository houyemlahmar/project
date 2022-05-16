import 'package:cloud_firestore/cloud_firestore.dart';

class tech {
  String? id;
  final String? Nom;
  final String? ID_RG;
  final String? Prenom;
  final String? Zone;
  final String? CIN;
  final String? Numtele;

  tech(
      {this.Nom,
      this.ID_RG,
      this.Prenom,
      this.Zone,
      this.CIN,
      this.Numtele,
      this.id});
  // receiving data form server

  // sending data to sur server
  Map<String, dynamic> toJson() => {
        'Nom': Nom,
        'Prénom': Prenom,
        'Zone': Zone,
        'CIN': CIN,
        'Numtele': Numtele,
        'ID_RG': ID_RG
      };

  factory tech.formJson(Map<String, dynamic> json) {
    return tech(
        Nom: json['Nom'],
        ID_RG: json['ID_RG'],
        Prenom: json['Prenom'],
        Zone: json['Zone'],
        CIN: json['CIN'],
        Numtele: json['Numtele']);
  }
}
