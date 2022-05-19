// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'region_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegionModel _$RegionModelFromJson(Map<String, dynamic> json) {
  return _RegionModel.fromJson(json);
}

/// @nodoc
mixin _$RegionModel {
  String? get id => throw _privateConstructorUsedError;
  String? get nom => throw _privateConstructorUsedError;
  String? get rue => throw _privateConstructorUsedError;
  String? get code_postal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionModelCopyWith<RegionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionModelCopyWith<$Res> {
  factory $RegionModelCopyWith(
          RegionModel value, $Res Function(RegionModel) then) =
      _$RegionModelCopyWithImpl<$Res>;
  $Res call({String? id, String? nom, String? rue, String? code_postal});
}

/// @nodoc
class _$RegionModelCopyWithImpl<$Res> implements $RegionModelCopyWith<$Res> {
  _$RegionModelCopyWithImpl(this._value, this._then);

  final RegionModel _value;
  // ignore: unused_field
  final $Res Function(RegionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nom = freezed,
    Object? rue = freezed,
    Object? code_postal = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: nom == freezed
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String?,
      rue: rue == freezed
          ? _value.rue
          : rue // ignore: cast_nullable_to_non_nullable
              as String?,
      code_postal: code_postal == freezed
          ? _value.code_postal
          : code_postal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegionModelCopyWith<$Res>
    implements $RegionModelCopyWith<$Res> {
  factory _$$_RegionModelCopyWith(
          _$_RegionModel value, $Res Function(_$_RegionModel) then) =
      __$$_RegionModelCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? nom, String? rue, String? code_postal});
}

/// @nodoc
class __$$_RegionModelCopyWithImpl<$Res> extends _$RegionModelCopyWithImpl<$Res>
    implements _$$_RegionModelCopyWith<$Res> {
  __$$_RegionModelCopyWithImpl(
      _$_RegionModel _value, $Res Function(_$_RegionModel) _then)
      : super(_value, (v) => _then(v as _$_RegionModel));

  @override
  _$_RegionModel get _value => super._value as _$_RegionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? nom = freezed,
    Object? rue = freezed,
    Object? code_postal = freezed,
  }) {
    return _then(_$_RegionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: nom == freezed
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String?,
      rue: rue == freezed
          ? _value.rue
          : rue // ignore: cast_nullable_to_non_nullable
              as String?,
      code_postal: code_postal == freezed
          ? _value.code_postal
          : code_postal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegionModel with DiagnosticableTreeMixin implements _RegionModel {
  _$_RegionModel({this.id, this.nom, this.rue, this.code_postal});

  factory _$_RegionModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegionModelFromJson(json);

  @override
  final String? id;
  @override
  final String? nom;
  @override
  final String? rue;
  @override
  final String? code_postal;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegionModel(id: $id, nom: $nom, rue: $rue, code_postal: $code_postal)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nom', nom))
      ..add(DiagnosticsProperty('rue', rue))
      ..add(DiagnosticsProperty('code_postal', code_postal));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nom, nom) &&
            const DeepCollectionEquality().equals(other.rue, rue) &&
            const DeepCollectionEquality()
                .equals(other.code_postal, code_postal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nom),
      const DeepCollectionEquality().hash(rue),
      const DeepCollectionEquality().hash(code_postal));

  @JsonKey(ignore: true)
  @override
  _$$_RegionModelCopyWith<_$_RegionModel> get copyWith =>
      __$$_RegionModelCopyWithImpl<_$_RegionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionModelToJson(this);
  }
}

abstract class _RegionModel implements RegionModel {
  factory _RegionModel(
      {final String? id,
      final String? nom,
      final String? rue,
      final String? code_postal}) = _$_RegionModel;

  factory _RegionModel.fromJson(Map<String, dynamic> json) =
      _$_RegionModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get nom => throw _privateConstructorUsedError;
  @override
  String? get rue => throw _privateConstructorUsedError;
  @override
  String? get code_postal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegionModelCopyWith<_$_RegionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
