// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'technicien_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

techModel _$techModelFromJson(Map<String, dynamic> json) {
  return _techModel.fromJson(json);
}

/// @nodoc
mixin _$techModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get Nom => throw _privateConstructorUsedError;
  set Nom(String? value) => throw _privateConstructorUsedError;
  String? get id_region => throw _privateConstructorUsedError;
  set id_region(String? value) => throw _privateConstructorUsedError;
  String? get Prenom => throw _privateConstructorUsedError;
  set Prenom(String? value) => throw _privateConstructorUsedError;

  String? get Zone => throw _privateConstructorUsedError;
  set Zone(String? value) => throw _privateConstructorUsedError;
  String? get CIN => throw _privateConstructorUsedError;
  set CIN(String? value) => throw _privateConstructorUsedError;
  String? get Numtele => throw _privateConstructorUsedError;
  set Numtele(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $techModelCopyWith<techModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $techModelCopyWith<$Res> {
  factory $techModelCopyWith(techModel value, $Res Function(techModel) then) =
      _$techModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? Nom,
      String? Prenom,
      String? id_region,
      String? Zone,
      String? CIN,
      String? Numtele});
}

/// @nodoc
class _$techModelCopyWithImpl<$Res> implements $techModelCopyWith<$Res> {
  _$techModelCopyWithImpl(this._value, this._then);

  final techModel _value;
  // ignore: unused_field
  final $Res Function(techModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? Nom = freezed,
    Object? id_region = freezed,
    Object? Prenom = freezed,
    Object? Zone = freezed,
    Object? CIN = freezed,
    Object? Numtele = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      Nom: Nom == freezed
          ? _value.Nom
          : Nom // ignore: cast_nullable_to_non_nullable
              as String?,
      id_region: id_region == freezed
          ? _value.id_region
          : id_region // ignore: cast_nullable_to_non_nullable
              as String?,
      Prenom: Prenom == freezed
          ? _value.Prenom
          : Prenom // ignore: cast_nullable_to_non_nullable

              as String?,
      Zone: Zone == freezed
          ? _value.Zone
          : Zone // ignore: cast_nullable_to_non_nullable
              as String?,
      CIN: CIN == freezed
          ? _value.CIN
          : CIN // ignore: cast_nullable_to_non_nullable
              as String?,
      Numtele: Numtele == freezed
          ? _value.Numtele
          : Numtele // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_techModelCopyWith<$Res> implements $techModelCopyWith<$Res> {
  factory _$$_techModelCopyWith(
          _$_techModel value, $Res Function(_$_techModel) then) =
      __$$_techModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? Nom,
      String? id_region,
      String? Prenom,
      String? Zone,
      String? CIN,
      String? Numtele});
}

/// @nodoc
class __$$_techModelCopyWithImpl<$Res> extends _$techModelCopyWithImpl<$Res>
    implements _$$_techModelCopyWith<$Res> {
  __$$_techModelCopyWithImpl(
      _$_techModel _value, $Res Function(_$_techModel) _then)
      : super(_value, (v) => _then(v as _$_techModel));

  @override
  _$_techModel get _value => super._value as _$_techModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? Nom = freezed,
    Object? id_region = freezed,
    Object? Prenom = freezed,
    Object? Zone = freezed,
    Object? CIN = freezed,
    Object? Numtele = freezed,
  }) {
    return _then(_$_techModel(
        id: id == freezed
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String?,
        Nom: Nom == freezed
            ? _value.Nom
            : Nom // ignore: cast_nullable_to_non_nullable
                as String?,
        Prenom: Prenom == freezed
            ? _value.Prenom
            : Prenom // ignore: cast_nullable_to_non_nullable
                as String?,
        id_region: id_region == freezed
            ? _value.id_region
            : id_region // ignore: cast_nullable_to_non_nullable
                as String?,
        Zone: Zone == freezed
            ? _value.Zone
            : Zone // ignore: cast_nullable_to_non_nullable
                as String?,
        CIN: CIN == freezed
            ? _value.CIN
            : CIN // ignore: cast_nullable_to_non_nullable
                as String?,
        Numtele: Numtele == freezed
            ? _value.Numtele
            : Numtele // ignore: cast_nullable_to_non_nullable
                as String?));
  }
}

@JsonSerializable()
class _$_techModel with DiagnosticableTreeMixin implements _techModel {
  _$_techModel(
      {this.id,
      this.Nom,
      this.id_region,
      this.Prenom,
      this.Zone,
      this.CIN,
      this.Numtele});

  factory _$_techModel.fromJson(Map<String, dynamic> json) =>
      _$$_techModelFromJson(json);

  @override
  String? id;
  @override
  String? Nom;
  @override
  String? id_region;
  @override
  String? Prenom;

  @override
  String? Zone;
  @override
  String? CIN;
  @override
  String? Numtele;
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'techModel(id: $id, Nom: $Nom, id_region: $id_region, Prenom: $Prenom, Zone: $Zone, CIN: $CIN , Numtele: $Numtele)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'techModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('Nom', Nom))
      ..add(DiagnosticsProperty('id_region', id_region))
      ..add(DiagnosticsProperty('Prenom', Prenom))
      ..add(DiagnosticsProperty('Zone', Zone))
      ..add(DiagnosticsProperty('CIN', CIN))
      ..add(DiagnosticsProperty('Numtele', Numtele));
  }

  @JsonKey(ignore: true)
  @override
  _$$_techModelCopyWith<_$_techModel> get copyWith =>
      __$$_techModelCopyWithImpl<_$_techModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_techModelToJson(this);
  }
}

abstract class _techModel implements techModel {
  factory _techModel(
      {String? id,
      String? Nom,
      String? Prenom,
      String? id_region,
      String? Zone,
      String? CIN,
      String? Numtele}) = _$_techModel;

  factory _techModel.fromJson(Map<String, dynamic> json) =
      _$_techModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get Nom => throw _privateConstructorUsedError;
  @override
  String? get id_region => throw _privateConstructorUsedError;
  @override
  String? get Prenom => throw _privateConstructorUsedError;

  @override
  String? get Zone => throw _privateConstructorUsedError;
  @override
  String? get CIN => throw _privateConstructorUsedError;
  @override
  String? get Numtele => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_techModelCopyWith<_$_techModel> get copyWith =>
      throw _privateConstructorUsedError;
}
