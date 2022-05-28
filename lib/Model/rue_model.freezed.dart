// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rue_model.dart';
// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RueModel _$RueModelFromJson(Map<String, dynamic> json) {
  return _RueModel.fromJson(json);
}

/// @nodoc
mixin _$RueModel {
  String? get id_region => throw _privateConstructorUsedError;
  set id_region(String? value) => throw _privateConstructorUsedError;
  String? get id_rue => throw _privateConstructorUsedError;
  set id_rue(String? value) => throw _privateConstructorUsedError;
  String? get nom => throw _privateConstructorUsedError;
  set nom(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RueModelCopyWith<RueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RueModelCopyWith<$Res> {
  factory $RueModelCopyWith(RueModel value, $Res Function(RueModel) then) =
      _$RueModelCopyWithImpl<$Res>;
  $Res call({
    String? id_region,
    String? id_rue,
    String? nom,
  });
}

/// @nodoc
class _$RueModelCopyWithImpl<$Res> implements $RueModelCopyWith<$Res> {
  _$RueModelCopyWithImpl(this._value, this._then);

  final RueModel _value;
  // ignore: unused_field
  final $Res Function(RueModel) _then;

  @override
  $Res call(
      {Object? id_region = freezed,
      Object? id_rue = freezed,
      Object? nom = freezed}) {
    return _then(_value.copyWith(
      id_region: id_region == freezed
          ? _value.id_region
          : id_region // ignore: cast_nullable_to_non_nullable
              as String?,
      id_rue: id_rue == freezed
          ? _value.id_rue
          : id_rue // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: nom == freezed
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RueModelCopyWith<$Res> implements $RueModelCopyWith<$Res> {
  factory _$$_RueModelCopyWith(
          _$_RueModel value, $Res Function(_$_RueModel) then) =
      __$$_RueModelCopyWithImpl<$Res>;
  @override
  $Res call({
    String? id_region,
    String? id_rue,
    String? nom,
  });
}

/// @nodoc
class __$$_RueModelCopyWithImpl<$Res> extends _$RueModelCopyWithImpl<$Res>
    implements _$$_RueModelCopyWith<$Res> {
  __$$_RueModelCopyWithImpl(
      _$_RueModel _value, $Res Function(_$_RueModel) _then)
      : super(_value, (v) => _then(v as _$_RueModel));

  @override
  _$_RueModel get _value => super._value as _$_RueModel;

  @override
  $Res call(
      {Object? id_region = freezed,
      Object? id_rue = freezed,
      Object? nom = freezed}) {
    return _then(_$_RueModel(
      id_region: id_region == freezed
          ? _value.id_region
          : id_region // ignore: cast_nullable_to_non_nullable
              as String?,
      id_rue: id_region == freezed
          ? _value.id_rue
          : id_rue // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: nom == freezed
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RueModel with DiagnosticableTreeMixin implements _RueModel {
  _$_RueModel({
    this.id_region,
    this.id_rue,
    this.nom,
  });

  factory _$_RueModel.fromJson(Map<String, dynamic> json) =>
      _$$_RueModelFromJson(json);

  @override
  String? id_region;
  @override
  String? id_rue;
  @override
  String? nom;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RueModel( id_region: $id_region, nom: $nom, id_rue: $id_rue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RueModel'))
      ..add(DiagnosticsProperty('id_region', id_region))
      ..add(DiagnosticsProperty('id_region', id_rue))
      ..add(DiagnosticsProperty('nom', nom));
  }

  @JsonKey(ignore: true)
  @override
  _$$_RueModelCopyWith<_$_RueModel> get copyWith =>
      __$$_RueModelCopyWithImpl<_$_RueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RueModelToJson(this);
  }
}

abstract class _RueModel implements RueModel {
  factory _RueModel({
    String? id_region,
    String? id_rue,
    String? nom,
  }) = _$_RueModel;

  factory _RueModel.fromJson(Map<String, dynamic> json) = _$_RueModel.fromJson;

  @override
  String? get id_region => throw _privateConstructorUsedError;
  @override
  String? get id_rue => throw _privateConstructorUsedError;
  @override
  String? get nom => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_RueModelCopyWith<_$_RueModel> get copyWith =>
      throw _privateConstructorUsedError;
}
