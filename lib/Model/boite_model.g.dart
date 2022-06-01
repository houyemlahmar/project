// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoiteModel _$$_BoiteModelFromJson(Map<String, dynamic> json) =>
    _$_BoiteModel(
      id_boite: json['id_boite'] as String?,
      id_region: json['id_region'] as String?,
      id_rue: json['id_rue'] as String?,
      nbr_max: json['nbr_max'] as int? ?? 0,
      nbr_used: json['nbr_used'] as int? ?? 0,
    );

Map<String, dynamic> _$$_BoiteModelToJson(_$_BoiteModel instance) =>
    <String, dynamic>{
      'id_boite': instance.id_boite,
      'id_region': instance.id_region,
      'id_rue': instance.id_rue,
      'nbr_max': instance.nbr_max,
      'nbr_used': instance.nbr_used,
    };
