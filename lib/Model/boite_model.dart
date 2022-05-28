import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'boite_model.freezed.dart';
part 'boite_model.g.dart';

@unfreezed
class BoiteModel with _$BoiteModel {
  factory BoiteModel(
      {String? id_boite,
      String? id_region,
      String? id_rue,
      String? nbr_max,
      String? nbr_used}) = _BoiteModel;
  factory BoiteModel.fromDocument(DocumentSnapshot doc) =>
      BoiteModel.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id_boite: doc.id);

  factory BoiteModel.fromJson(Map<String, dynamic> json) =>
      _$BoiteModelFromJson(json);
}
