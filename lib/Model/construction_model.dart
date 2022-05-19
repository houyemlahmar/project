import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'construction_model.freezed.dart';
part 'construction_model.g.dart';

@unfreezed
class ConstructionModel with _$ConstructionModel {
  factory ConstructionModel(
      {String? id,
      int? debit,
      String? etatDemande,
      String? offre,
      String? reference,
      String? time,
      String? userId}) = _ConstructionModel;
  factory ConstructionModel.fromDocument(DocumentSnapshot doc) =>
      ConstructionModel.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);

  factory ConstructionModel.fromJson(Map<String, dynamic> json) =>
      _$ConstructionModelFromJson(json);
}
