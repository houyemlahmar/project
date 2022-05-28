import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'rue_model.freezed.dart';
part 'rue_model.g.dart';

@unfreezed
class RueModel with _$RueModel {
  factory RueModel({String? id_rue, String? id_region, String? nom}) =
      _RueModel;
  factory RueModel.fromDocument(DocumentSnapshot doc) =>
      RueModel.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id_rue: doc.id);

  factory RueModel.fromJson(Map<String, dynamic> json) =>
      _$RueModelFromJson(json);
}
