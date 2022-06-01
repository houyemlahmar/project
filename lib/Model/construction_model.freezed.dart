// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'construction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConstructionModel _$ConstructionModelFromJson(Map<String, dynamic> json) {
  return _ConstructionModel.fromJson(json);
}

/// @nodoc
mixin _$ConstructionModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  int? get debit => throw _privateConstructorUsedError;
  set debit(int? value) => throw _privateConstructorUsedError;
  String? get etatDemande => throw _privateConstructorUsedError;
  set etatDemande(String? value) => throw _privateConstructorUsedError;
  String? get offre => throw _privateConstructorUsedError;
  set offre(String? value) => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  set reference(String? value) => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at',
      fromJson: _createdAtFromJson,
      toJson: _createdAtToJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at',
      fromJson: _createdAtFromJson,
      toJson: _createdAtToJson)
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  set userId(String? value) => throw _privateConstructorUsedError;
  String? get id_region => throw _privateConstructorUsedError;
  set id_region(String? value) => throw _privateConstructorUsedError;
  String? get id_rue => throw _privateConstructorUsedError;
  set id_rue(String? value) => throw _privateConstructorUsedError;
  String? get id_boite => throw _privateConstructorUsedError;
  set id_boite(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstructionModelCopyWith<ConstructionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstructionModelCopyWith<$Res> {
  factory $ConstructionModelCopyWith(
          ConstructionModel value, $Res Function(ConstructionModel) then) =
      _$ConstructionModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int? debit,
      String? etatDemande,
      String? offre,
      String? reference,
      @JsonKey(name: 'created_at', fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          DateTime createdAt,
      String? userId,
      String? id_region,
      String? id_rue,
      String? id_boite});
}

/// @nodoc
class _$ConstructionModelCopyWithImpl<$Res>
    implements $ConstructionModelCopyWith<$Res> {
  _$ConstructionModelCopyWithImpl(this._value, this._then);

  final ConstructionModel _value;
  // ignore: unused_field
  final $Res Function(ConstructionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? debit = freezed,
    Object? etatDemande = freezed,
    Object? offre = freezed,
    Object? reference = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? id_region = freezed,
    Object? id_rue = freezed,
    Object? id_boite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      debit: debit == freezed
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as int?,
      etatDemande: etatDemande == freezed
          ? _value.etatDemande
          : etatDemande // ignore: cast_nullable_to_non_nullable
              as String?,
      offre: offre == freezed
          ? _value.offre
          : offre // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      id_region: id_region == freezed
          ? _value.id_region
          : id_region // ignore: cast_nullable_to_non_nullable
              as String?,
      id_rue: id_rue == freezed
          ? _value.id_rue
          : id_rue // ignore: cast_nullable_to_non_nullable
              as String?,
      id_boite: id_boite == freezed
          ? _value.id_boite
          : id_boite // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ConstructionModelCopyWith<$Res>
    implements $ConstructionModelCopyWith<$Res> {
  factory _$$_ConstructionModelCopyWith(_$_ConstructionModel value,
          $Res Function(_$_ConstructionModel) then) =
      __$$_ConstructionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      int? debit,
      String? etatDemande,
      String? offre,
      String? reference,
      @JsonKey(name: 'created_at', fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          DateTime createdAt,
      String? userId,
      String? id_region,
      String? id_rue,
      String? id_boite});
}

/// @nodoc
class __$$_ConstructionModelCopyWithImpl<$Res>
    extends _$ConstructionModelCopyWithImpl<$Res>
    implements _$$_ConstructionModelCopyWith<$Res> {
  __$$_ConstructionModelCopyWithImpl(
      _$_ConstructionModel _value, $Res Function(_$_ConstructionModel) _then)
      : super(_value, (v) => _then(v as _$_ConstructionModel));

  @override
  _$_ConstructionModel get _value => super._value as _$_ConstructionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? debit = freezed,
    Object? etatDemande = freezed,
    Object? offre = freezed,
    Object? reference = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? id_region = freezed,
    Object? id_rue = freezed,
    Object? id_boite = freezed,
  }) {
    return _then(_$_ConstructionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      debit: debit == freezed
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as int?,
      etatDemande: etatDemande == freezed
          ? _value.etatDemande
          : etatDemande // ignore: cast_nullable_to_non_nullable
              as String?,
      offre: offre == freezed
          ? _value.offre
          : offre // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      id_region: id_region == freezed
          ? _value.id_region
          : id_region // ignore: cast_nullable_to_non_nullable
              as String?,
      id_rue: id_rue == freezed
          ? _value.id_rue
          : id_rue // ignore: cast_nullable_to_non_nullable
              as String?,
      id_boite: id_boite == freezed
          ? _value.id_boite
          : id_boite // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConstructionModel
    with DiagnosticableTreeMixin
    implements _ConstructionModel {
  _$_ConstructionModel(
      {this.id,
      this.debit,
      this.etatDemande,
      this.offre,
      this.reference,
      @JsonKey(name: 'created_at', fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          required this.createdAt,
      this.userId,
      this.id_region,
      this.id_rue,
      this.id_boite});

  factory _$_ConstructionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConstructionModelFromJson(json);

  @override
  String? id;
  @override
  int? debit;
  @override
  String? etatDemande;
  @override
  String? offre;
  @override
  String? reference;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: _createdAtFromJson,
      toJson: _createdAtToJson)
  DateTime createdAt;
  @override
  String? userId;
  @override
  String? id_region;
  @override
  String? id_rue;
  @override
  String? id_boite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConstructionModel(id: $id, debit: $debit, etatDemande: $etatDemande, offre: $offre, reference: $reference, createdAt: $createdAt, userId: $userId, id_region: $id_region, id_rue: $id_rue, id_boite: $id_boite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConstructionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('debit', debit))
      ..add(DiagnosticsProperty('etatDemande', etatDemande))
      ..add(DiagnosticsProperty('offre', offre))
      ..add(DiagnosticsProperty('reference', reference))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('id_region', id_region))
      ..add(DiagnosticsProperty('id_rue', id_rue))
      ..add(DiagnosticsProperty('id_boite', id_boite));
  }

  @JsonKey(ignore: true)
  @override
  _$$_ConstructionModelCopyWith<_$_ConstructionModel> get copyWith =>
      __$$_ConstructionModelCopyWithImpl<_$_ConstructionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConstructionModelToJson(this);
  }
}

abstract class _ConstructionModel implements ConstructionModel {
  factory _ConstructionModel(
      {String? id,
      int? debit,
      String? etatDemande,
      String? offre,
      String? reference,
      @JsonKey(name: 'created_at', fromJson: _createdAtFromJson, toJson: _createdAtToJson)
          required DateTime createdAt,
      String? userId,
      String? id_region,
      String? id_rue,
      String? id_boite}) = _$_ConstructionModel;

  factory _ConstructionModel.fromJson(Map<String, dynamic> json) =
      _$_ConstructionModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  int? get debit => throw _privateConstructorUsedError;
  @override
  String? get etatDemande => throw _privateConstructorUsedError;
  @override
  String? get offre => throw _privateConstructorUsedError;
  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: _createdAtFromJson,
      toJson: _createdAtToJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  String? get userId => throw _privateConstructorUsedError;
  @override
  String? get id_region => throw _privateConstructorUsedError;
  @override
  String? get id_rue => throw _privateConstructorUsedError;
  @override
  String? get id_boite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConstructionModelCopyWith<_$_ConstructionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
