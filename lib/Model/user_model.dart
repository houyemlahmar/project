import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModel with _$UserModel {
  factory UserModel(
      {String? id,
      String? email,
      String? firstname,
      String? lastname,
      String? cin,
      String? phonenumber}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromDocument(DocumentSnapshot doc) =>
      UserModel.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}
