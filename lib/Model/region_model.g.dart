// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegionModel _$$_RegionModelFromJson(Map<String, dynamic> json) =>
    _$_RegionModel(
      id_region: json['id_region'] as String?,
      nom: json['nom'] as String?,
      rue: json['rue'] as String?,
      code_postal: json['code_postal'] as int?,
    );

Map<String, dynamic> _$$_RegionModelToJson(_$_RegionModel instance) =>
    <String, dynamic>{
      'id_region': instance.id_region,
      'nom': instance.nom,
      'rue': instance.rue,
      'code_postal': instance.code_postal,
    };
