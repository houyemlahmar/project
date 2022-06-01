// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technicien_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_techModel _$$_techModelFromJson(Map<String, dynamic> json) => _$_techModel(
      id: json['id'] as String?,
      id_region: json['id_region'] as String?,
      Nom: json['Nom'] as String?,
      Prenom: json['Prenom'] as String?,
      region: json['region'] as String?,
      CIN: json['CIN'] as String?,
      Numtele: json['Numtele'] as String?,
      e_mail: json['e_mail'] as String?,
      mp: json['mp'] as String?,
    );

Map<String, dynamic> _$$_techModelToJson(_$_techModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_region': instance.id_region,
      'Nom': instance.Nom,
      'Prenom': instance.Prenom,
      'region': instance.region,
      'CIN': instance.CIN,
      'Numtele': instance.Numtele,
      'e_mail': instance.e_mail,
      'mp': instance.mp,
    };
