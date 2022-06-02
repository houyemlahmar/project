import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'technicien_model.freezed.dart';
part 'technicien_model.g.dart';

@unfreezed
class techModel with _$techModel {
  factory techModel({
    String? id,
    String? id_region,
    String? Nom,
    String? Prenom,
    String? region,
    String? CIN,
    String? Numtele,
  }) = _techModel;

  factory techModel.fromDocument(DocumentSnapshot doc) => techModel
      .fromJson(doc.data() as Map<String, dynamic>)
      .copyWith(id: doc.id);

  factory techModel.fromJson(Map<String, dynamic> json) =>
      _$techModelFromJson(json);
}
