// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoiteModel _$BoiteModelFromJson(Map<String, dynamic> json) {
  return _BoiteModel.fromJson(json);
}

/// @nodoc
mixin _$BoiteModel {
  String? get id_region => throw _privateConstructorUsedError;
  set id_region(String? value) => throw _privateConstructorUsedError;
  String? get id_rue => throw _privateConstructorUsedError;
  set id_rue(String? value) => throw _privateConstructorUsedError;
  String? get nbr_max => throw _privateConstructorUsedError;
  set nbr_max(String? value) => throw _privateConstructorUsedError;
  String? get nbr_used => throw _privateConstructorUsedError;
  set nbr_used(String? value) => throw _privateConstructorUsedError;
  String? get id_boite => throw _privateConstructorUsedError;
  set id_boite(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoiteModelCopyWith<BoiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoiteModelCopyWith<$Res> {
  factory $BoiteModelCopyWith(
          BoiteModel value, $Res Function(BoiteModel) then) =
      _$BoiteModelCopyWithImpl<$Res>;
  $Res call(
      {String? id_region,
      String? id_rue,
      String? nbr_max,
      String? nbr_used,
      String? id_boite});
}

/// @nodoc
class _$BoiteModelCopyWithImpl<$Res> implements $BoiteModelCopyWith<$Res> {
  _$BoiteModelCopyWithImpl(this._value, this._then);

  final BoiteModel _value;
  // ignore: unused_field
  final $Res Function(BoiteModel) _then;

  @override
  $Res call({
    Object? id_region = freezed,
    Object? id_rue = freezed,
    Object? nbr_max = freezed,
    Object? nbr_used = freezed,
    Object? id_boite = freezed,
  }) {
    return _then(_value.copyWith(
      id_region: id_region == freezed
          ? _value.id_region
          : id_region // ignore: cast_nullable_to_non_nullable
              as String?,
      id_rue: id_rue == freezed
          ? _value.id_rue
          : id_rue // ignore: cast_nullable_to_non_nullable
              as String?,
      nbr_max: nbr_max == freezed
          ? _value.nbr_max
          : nbr_max // ignore: cast_nullable_to_non_nullable
              as String?,
      nbr_used: nbr_used == freezed
          ? _value.nbr_used
          : nbr_used // ignore: cast_nullable_to_non_nullable
              as String?,
      id_boite: id_boite == freezed
          ? _value.id_boite
          : id_boite // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BoiteModelCopyWith<$Res>
    implements $BoiteModelCopyWith<$Res> {
  factory _$$_BoiteModelCopyWith(
          _$_BoiteModel value, $Res Function(_$_BoiteModel) then) =
      __$$_BoiteModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id_region,
      String? id_rue,
      String? nbr_max,
      String? nbr_used,
      String? id_boite});
}

/// @nodoc
class __$$_BoiteModelCopyWithImpl<$Res> extends _$BoiteModelCopyWithImpl<$Res>
    implements _$$_BoiteModelCopyWith<$Res> {
  __$$_BoiteModelCopyWithImpl(
      _$_BoiteModel _value, $Res Function(_$_BoiteModel) _then)
      : super(_value, (v) => _then(v as _$_BoiteModel));

  @override
  _$_BoiteModel get _value => super._value as _$_BoiteModel;

  @override
  $Res call({
    Object? id_region = freezed,
    Object? id_rue = freezed,
    Object? nbr_max = freezed,
    Object? nbr_used = freezed,
    Object? id_boite = freezed,
  }) {
    return _then(_$_BoiteModel(
      id_region: id_region == freezed
          ? _value.id_region
          : id_region // ignore: cast_nullable_to_non_nullable
              as String?,
      id_rue: id_rue == freezed
          ? _value.id_rue
          : id_rue // ignore: cast_nullable_to_non_nullable
              as String?,
      nbr_max: nbr_max == freezed
          ? _value.nbr_max
          : nbr_max // ignore: cast_nullable_to_non_nullable
              as String?,
      nbr_used: nbr_used == freezed
          ? _value.nbr_used
          : nbr_used // ignore: cast_nullable_to_non_nullable
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
class _$_BoiteModel with DiagnosticableTreeMixin implements _BoiteModel {
  _$_BoiteModel(
      {this.id_region,
      this.id_rue,
      this.nbr_max,
      this.nbr_used,
      this.id_boite});

  factory _$_BoiteModel.fromJson(Map<String, dynamic> json) =>
      _$$_BoiteModelFromJson(json);

  @override
  String? id_region;
  @override
  String? id_rue;
  @override
  String? nbr_max;
  @override
  String? nbr_used;
  @override
  String? id_boite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoiteModel( id_region: $id_region, id_rue: $id_rue, nbr_max: $nbr_max, nbr_used: $nbr_used, id_boite: $id_boite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoiteModel'))
      ..add(DiagnosticsProperty('id_region', id_region))
      ..add(DiagnosticsProperty('id_rue', id_rue))
      ..add(DiagnosticsProperty('nbr_max', nbr_max))
      ..add(DiagnosticsProperty('nbr_used', nbr_used))
      ..add(DiagnosticsProperty('id_boite', id_boite));
  }

  @JsonKey(ignore: true)
  @override
  _$$_BoiteModelCopyWith<_$_BoiteModel> get copyWith =>
      __$$_BoiteModelCopyWithImpl<_$_BoiteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoiteModelToJson(this);
  }
}

abstract class _BoiteModel implements BoiteModel {
  factory _BoiteModel(
      {String? id_region,
      String? id_rue,
      String? nbr_max,
      String? nbr_used,
      String? id_boite}) = _$_BoiteModel;

  factory _BoiteModel.fromJson(Map<String, dynamic> json) =
      _$_BoiteModel.fromJson;

  @override
  String? get id_region => throw _privateConstructorUsedError;
  @override
  String? get id_rue => throw _privateConstructorUsedError;
  @override
  String? get nbr_max => throw _privateConstructorUsedError;
  @override
  String? get nbr_used => throw _privateConstructorUsedError;
  @override
  String? get id_boite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BoiteModelCopyWith<_$_BoiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
