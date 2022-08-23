// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gov.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gov _$GovFromJson(Map<String, dynamic> json) {
  return _Gov.fromJson(json);
}

/// @nodoc
mixin _$Gov {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'governorate_name_ar')
  String get governorateNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'governorate_name_en')
  String get governorateNameEn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GovCopyWith<Gov> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GovCopyWith<$Res> {
  factory $GovCopyWith(Gov value, $Res Function(Gov) then) =
      _$GovCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'governorate_name_ar') String governorateNameAr,
      @JsonKey(name: 'governorate_name_en') String governorateNameEn});
}

/// @nodoc
class _$GovCopyWithImpl<$Res> implements $GovCopyWith<$Res> {
  _$GovCopyWithImpl(this._value, this._then);

  final Gov _value;
  // ignore: unused_field
  final $Res Function(Gov) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? governorateNameAr = freezed,
    Object? governorateNameEn = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      governorateNameAr: governorateNameAr == freezed
          ? _value.governorateNameAr
          : governorateNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      governorateNameEn: governorateNameEn == freezed
          ? _value.governorateNameEn
          : governorateNameEn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GovCopyWith<$Res> implements $GovCopyWith<$Res> {
  factory _$$_GovCopyWith(_$_Gov value, $Res Function(_$_Gov) then) =
      __$$_GovCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'governorate_name_ar') String governorateNameAr,
      @JsonKey(name: 'governorate_name_en') String governorateNameEn});
}

/// @nodoc
class __$$_GovCopyWithImpl<$Res> extends _$GovCopyWithImpl<$Res>
    implements _$$_GovCopyWith<$Res> {
  __$$_GovCopyWithImpl(_$_Gov _value, $Res Function(_$_Gov) _then)
      : super(_value, (v) => _then(v as _$_Gov));

  @override
  _$_Gov get _value => super._value as _$_Gov;

  @override
  $Res call({
    Object? id = freezed,
    Object? governorateNameAr = freezed,
    Object? governorateNameEn = freezed,
  }) {
    return _then(_$_Gov(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      governorateNameAr: governorateNameAr == freezed
          ? _value.governorateNameAr
          : governorateNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      governorateNameEn: governorateNameEn == freezed
          ? _value.governorateNameEn
          : governorateNameEn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gov with DiagnosticableTreeMixin implements _Gov {
  const _$_Gov(
      {required this.id,
      @JsonKey(name: 'governorate_name_ar') required this.governorateNameAr,
      @JsonKey(name: 'governorate_name_en') required this.governorateNameEn});

  factory _$_Gov.fromJson(Map<String, dynamic> json) => _$$_GovFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'governorate_name_ar')
  final String governorateNameAr;
  @override
  @JsonKey(name: 'governorate_name_en')
  final String governorateNameEn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Gov(id: $id, governorateNameAr: $governorateNameAr, governorateNameEn: $governorateNameEn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Gov'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('governorateNameAr', governorateNameAr))
      ..add(DiagnosticsProperty('governorateNameEn', governorateNameEn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gov &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.governorateNameAr, governorateNameAr) &&
            const DeepCollectionEquality()
                .equals(other.governorateNameEn, governorateNameEn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(governorateNameAr),
      const DeepCollectionEquality().hash(governorateNameEn));

  @JsonKey(ignore: true)
  @override
  _$$_GovCopyWith<_$_Gov> get copyWith =>
      __$$_GovCopyWithImpl<_$_Gov>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GovToJson(
      this,
    );
  }
}

abstract class _Gov implements Gov {
  const factory _Gov(
      {required final String id,
      @JsonKey(name: 'governorate_name_ar')
          required final String governorateNameAr,
      @JsonKey(name: 'governorate_name_en')
          required final String governorateNameEn}) = _$_Gov;

  factory _Gov.fromJson(Map<String, dynamic> json) = _$_Gov.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'governorate_name_ar')
  String get governorateNameAr;
  @override
  @JsonKey(name: 'governorate_name_en')
  String get governorateNameEn;
  @override
  @JsonKey(ignore: true)
  _$$_GovCopyWith<_$_Gov> get copyWith => throw _privateConstructorUsedError;
}
