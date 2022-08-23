// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'governorate_id')
  String get governorateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_name_ar')
  String get cityNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_name_en')
  String get cityNameEn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'governorate_id') String governorateId,
      @JsonKey(name: 'city_name_ar') String cityNameAr,
      @JsonKey(name: 'city_name_en') String cityNameEn});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? governorateId = freezed,
    Object? cityNameAr = freezed,
    Object? cityNameEn = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      governorateId: governorateId == freezed
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as String,
      cityNameAr: cityNameAr == freezed
          ? _value.cityNameAr
          : cityNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      cityNameEn: cityNameEn == freezed
          ? _value.cityNameEn
          : cityNameEn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'governorate_id') String governorateId,
      @JsonKey(name: 'city_name_ar') String cityNameAr,
      @JsonKey(name: 'city_name_en') String cityNameEn});
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, (v) => _then(v as _$_City));

  @override
  _$_City get _value => super._value as _$_City;

  @override
  $Res call({
    Object? id = freezed,
    Object? governorateId = freezed,
    Object? cityNameAr = freezed,
    Object? cityNameEn = freezed,
  }) {
    return _then(_$_City(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      governorateId: governorateId == freezed
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as String,
      cityNameAr: cityNameAr == freezed
          ? _value.cityNameAr
          : cityNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      cityNameEn: cityNameEn == freezed
          ? _value.cityNameEn
          : cityNameEn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_City with DiagnosticableTreeMixin implements _City {
  const _$_City(
      {required this.id,
      @JsonKey(name: 'governorate_id') required this.governorateId,
      @JsonKey(name: 'city_name_ar') required this.cityNameAr,
      @JsonKey(name: 'city_name_en') required this.cityNameEn});

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'governorate_id')
  final String governorateId;
  @override
  @JsonKey(name: 'city_name_ar')
  final String cityNameAr;
  @override
  @JsonKey(name: 'city_name_en')
  final String cityNameEn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'City(id: $id, governorateId: $governorateId, cityNameAr: $cityNameAr, cityNameEn: $cityNameEn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'City'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('governorateId', governorateId))
      ..add(DiagnosticsProperty('cityNameAr', cityNameAr))
      ..add(DiagnosticsProperty('cityNameEn', cityNameEn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.governorateId, governorateId) &&
            const DeepCollectionEquality()
                .equals(other.cityNameAr, cityNameAr) &&
            const DeepCollectionEquality()
                .equals(other.cityNameEn, cityNameEn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(governorateId),
      const DeepCollectionEquality().hash(cityNameAr),
      const DeepCollectionEquality().hash(cityNameEn));

  @JsonKey(ignore: true)
  @override
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
          {required final String id,
          @JsonKey(name: 'governorate_id') required final String governorateId,
          @JsonKey(name: 'city_name_ar') required final String cityNameAr,
          @JsonKey(name: 'city_name_en') required final String cityNameEn}) =
      _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'governorate_id')
  String get governorateId;
  @override
  @JsonKey(name: 'city_name_ar')
  String get cityNameAr;
  @override
  @JsonKey(name: 'city_name_en')
  String get cityNameEn;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
}
