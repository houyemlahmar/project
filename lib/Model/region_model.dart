import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'region_model.freezed.dart';
part 'region_model.g.dart';

@freezed
class RegionModel with _$RegionModel {
  factory RegionModel(
      {String? id_region,
      String? nom,
      String? rue,
      String? code_postal}) = _RegionModel;

  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);

  factory RegionModel.fromDocument(DocumentSnapshot doc) =>
      RegionModel.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id_region: doc.id);
}
