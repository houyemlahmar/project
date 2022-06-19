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
      message: json['message'] as String?,
      etatOrdre: json['etatOrdre'] as String?,
      num: json['num'] as String?,
      offre: json['offre'] as String?,
      reference: json['reference'] as String?,
      createdAt: _createdAtFromJson(json['created_at'] as Timestamp),
      userId: json['userId'] as String?,
      id_region: json['id_region'] as String?,
      id_rue: json['id_rue'] as String?,
      id_boite: json['id_boite'] as String?,
      code_postal: json['code_postal'] as String?,
      numlot: json['numlot'] as String?,
      visible: json['visible'] as bool?,
    );

Map<String, dynamic> _$$_ConstructionModelToJson(
        _$_ConstructionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'debit': instance.debit,
      'etatDemande': instance.etatDemande,
      'message': instance.message,
      'etatOrdre': instance.etatOrdre,
      'num': instance.num,
      'offre': instance.offre,
      'reference': instance.reference,
      'created_at': _createdAtToJson(instance.createdAt),
      'userId': instance.userId,
      'id_region': instance.id_region,
      'id_rue': instance.id_rue,
      'id_boite': instance.id_boite,
      'code_postal': instance.code_postal,
      'numlot': instance.numlot,
      'visible': instance.visible,
    };
