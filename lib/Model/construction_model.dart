import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:login/Model/region_model.dart';

import 'construction_model.dart';
import 'construction_model.dart';
import 'construction_model.dart';

part 'construction_model.freezed.dart';
part 'construction_model.g.dart';

DateTime _createdAtFromJson(Timestamp timestamp) => timestamp.toDate();
Timestamp _createdAtToJson(DateTime date) => Timestamp.fromDate(date);

@unfreezed
abstract class ConstructionModel implements _$ConstructionModel {
   const ConstructionModel._();
  factory ConstructionModel({
    String? id,
    int? debit,
    String? etatDemande,
    String? message,
    int? num,
    String? offre,
    String? reference,
    @JsonKey(name: 'created_at', fromJson: _createdAtFromJson, toJson: _createdAtToJson)
        required DateTime createdAt,
    String? userId,
    String? id_region,
    String? id_rue,
    String? id_boite,
    String? code_postal,
    String? numlot,
  }) = _ConstructionModel;
  factory ConstructionModel.fromDocument(DocumentSnapshot doc) =>
      ConstructionModel.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);

  factory ConstructionModel.fromJson(Map<String, dynamic> json) =>
      _$ConstructionModelFromJson(json);

  Color getColor() {
    final now = DateTime.now();
    if (createdAt.isAfter(now.subtract(const Duration(hours: 1)))) {
      return Colors.green;
    } else if (createdAt.isAfter(now.subtract(const Duration(days: 3)))) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}
