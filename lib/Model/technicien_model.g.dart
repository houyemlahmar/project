// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technicien_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_techModel _$$_techModelFromJson(Map<String, dynamic> json) => _$_techModel(
      id: json['id'] as String?,
      Nom: json['Nom'] as String?,
      id_region: json['id_region'] as String?,
      Prenom: json['Prenom'] as String?,
      Zone: json['Zone'] as String?,
      CIN: json['CIN'] as String?,
      Numtele: json['Numtele'] as String?,
    );

Map<String, dynamic> _$$_techModelToJson(_$_techModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Nom': instance.Nom,
      'id_region': instance.id_region,
      'Prenom': instance.Prenom,
      'Zone': instance.Zone,
      'CIN': instance.CIN,
      'Numtele': instance.Numtele,
    };