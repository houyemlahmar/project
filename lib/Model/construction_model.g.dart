// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'construction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConstructionModel _$$_ConstructionModelFromJson(Map<String, dynamic> json) =>
    _$_ConstructionModel(
      id: json['id'] as String?,
      debit: json['debit'] as int?,
      etatDemande: json['etatDemande'] as String?,
      offre: json['offre'] as String?,
      reference: json['reference'] as String?,
      time: json['time'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$_ConstructionModelToJson(
        _$_ConstructionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'debit': instance.debit,
      'etatDemande': instance.etatDemande,
      'offre': instance.offre,
      'reference': instance.reference,
      'time': instance.time,
      'userId': instance.userId,
    };
