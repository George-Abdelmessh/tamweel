// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BannerData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res>;
  $Res call({String? status, String? message, List<BannerData>? data});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res> implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  final BannerModel _value;
  // ignore: unused_field
  final $Res Function(BannerModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannerData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BannerModelCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$_BannerModelCopyWith(
          _$_BannerModel value, $Res Function(_$_BannerModel) then) =
      __$$_BannerModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, List<BannerData>? data});
}

/// @nodoc
class __$$_BannerModelCopyWithImpl<$Res> extends _$BannerModelCopyWithImpl<$Res>
    implements _$$_BannerModelCopyWith<$Res> {
  __$$_BannerModelCopyWithImpl(
      _$_BannerModel _value, $Res Function(_$_BannerModel) _then)
      : super(_value, (v) => _then(v as _$_BannerModel));

  @override
  _$_BannerModel get _value => super._value as _$_BannerModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BannerModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannerData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerModel implements _BannerModel {
  const _$_BannerModel(
      {this.status, this.message, final List<BannerData>? data})
      : _data = data;

  factory _$_BannerModel.fromJson(Map<String, dynamic> json) =>
      _$$_BannerModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<BannerData>? _data;
  @override
  List<BannerData>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BannerModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      __$$_BannerModelCopyWithImpl<_$_BannerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerModelToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
      {final String? status,
      final String? message,
      final List<BannerData>? data}) = _$_BannerModel;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$_BannerModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<BannerData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BannerModelCopyWith<_$_BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerData _$BannerDataFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$BannerData {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int? get loanId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDataCopyWith<BannerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDataCopyWith<$Res> {
  factory $BannerDataCopyWith(
          BannerData value, $Res Function(BannerData) then) =
      _$BannerDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? image,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      int? loanId});
}

/// @nodoc
class _$BannerDataCopyWithImpl<$Res> implements $BannerDataCopyWith<$Res> {
  _$BannerDataCopyWithImpl(this._value, this._then);

  final BannerData _value;
  // ignore: unused_field
  final $Res Function(BannerData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loanId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loanId: loanId == freezed
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $BannerDataCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? image,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      int? loanId});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$BannerDataCopyWithImpl<$Res>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, (v) => _then(v as _$_Datum));

  @override
  _$_Datum get _value => super._value as _$_Datum;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loanId = freezed,
  }) {
    return _then(_$_Datum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loanId: loanId == freezed
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.id,
      this.title,
      this.image,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.loanId});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final int? loanId;

  @override
  String toString() {
    return 'BannerData(id: $id, title: $title, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, loanId: $loanId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.loanId, loanId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(loanId));

  @JsonKey(ignore: true)
  @override
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements BannerData {
  const factory _Datum(
      {final int? id,
      final String? title,
      final String? image,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      final int? loanId}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  int? get loanId;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}
