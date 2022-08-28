// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_loans_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankLoansModel _$BankLoansModelFromJson(Map<String, dynamic> json) {
  return _BankLoansModel.fromJson(json);
}

/// @nodoc
mixin _$BankLoansModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BankData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankLoansModelCopyWith<BankLoansModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankLoansModelCopyWith<$Res> {
  factory $BankLoansModelCopyWith(
          BankLoansModel value, $Res Function(BankLoansModel) then) =
      _$BankLoansModelCopyWithImpl<$Res>;
  $Res call({String? status, String? message, List<BankData>? data});
}

/// @nodoc
class _$BankLoansModelCopyWithImpl<$Res>
    implements $BankLoansModelCopyWith<$Res> {
  _$BankLoansModelCopyWithImpl(this._value, this._then);

  final BankLoansModel _value;
  // ignore: unused_field
  final $Res Function(BankLoansModel) _then;

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
              as List<BankData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BankLoansModelCopyWith<$Res>
    implements $BankLoansModelCopyWith<$Res> {
  factory _$$_BankLoansModelCopyWith(
          _$_BankLoansModel value, $Res Function(_$_BankLoansModel) then) =
      __$$_BankLoansModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, List<BankData>? data});
}

/// @nodoc
class __$$_BankLoansModelCopyWithImpl<$Res>
    extends _$BankLoansModelCopyWithImpl<$Res>
    implements _$$_BankLoansModelCopyWith<$Res> {
  __$$_BankLoansModelCopyWithImpl(
      _$_BankLoansModel _value, $Res Function(_$_BankLoansModel) _then)
      : super(_value, (v) => _then(v as _$_BankLoansModel));

  @override
  _$_BankLoansModel get _value => super._value as _$_BankLoansModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BankLoansModel(
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
              as List<BankData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankLoansModel implements _BankLoansModel {
  const _$_BankLoansModel(
      {this.status, this.message, final List<BankData>? data})
      : _data = data;

  factory _$_BankLoansModel.fromJson(Map<String, dynamic> json) =>
      _$$_BankLoansModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<BankData>? _data;
  @override
  List<BankData>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BankLoansModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankLoansModel &&
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
  _$$_BankLoansModelCopyWith<_$_BankLoansModel> get copyWith =>
      __$$_BankLoansModelCopyWithImpl<_$_BankLoansModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankLoansModelToJson(
      this,
    );
  }
}

abstract class _BankLoansModel implements BankLoansModel {
  const factory _BankLoansModel(
      {final String? status,
      final String? message,
      final List<BankData>? data}) = _$_BankLoansModel;

  factory _BankLoansModel.fromJson(Map<String, dynamic> json) =
      _$_BankLoansModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<BankData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BankLoansModelCopyWith<_$_BankLoansModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BankData _$BankDataFromJson(Map<String, dynamic> json) {
  return _BankData.fromJson(json);
}

/// @nodoc
mixin _$BankData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<LoanData>? get loans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDataCopyWith<BankData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDataCopyWith<$Res> {
  factory $BankDataCopyWith(BankData value, $Res Function(BankData) then) =
      _$BankDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? logo,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<LoanData>? loans});
}

/// @nodoc
class _$BankDataCopyWithImpl<$Res> implements $BankDataCopyWith<$Res> {
  _$BankDataCopyWithImpl(this._value, this._then);

  final BankData _value;
  // ignore: unused_field
  final $Res Function(BankData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loans = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loans: loans == freezed
          ? _value.loans
          : loans // ignore: cast_nullable_to_non_nullable
              as List<LoanData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BankDataCopyWith<$Res> implements $BankDataCopyWith<$Res> {
  factory _$$_BankDataCopyWith(
          _$_BankData value, $Res Function(_$_BankData) then) =
      __$$_BankDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? logo,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<LoanData>? loans});
}

/// @nodoc
class __$$_BankDataCopyWithImpl<$Res> extends _$BankDataCopyWithImpl<$Res>
    implements _$$_BankDataCopyWith<$Res> {
  __$$_BankDataCopyWithImpl(
      _$_BankData _value, $Res Function(_$_BankData) _then)
      : super(_value, (v) => _then(v as _$_BankData));

  @override
  _$_BankData get _value => super._value as _$_BankData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loans = freezed,
  }) {
    return _then(_$_BankData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loans: loans == freezed
          ? _value._loans
          : loans // ignore: cast_nullable_to_non_nullable
              as List<LoanData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankData implements _BankData {
  const _$_BankData(
      {this.id,
      this.name,
      this.logo,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      final List<LoanData>? loans})
      : _loans = loans;

  factory _$_BankData.fromJson(Map<String, dynamic> json) =>
      _$$_BankDataFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final List<LoanData>? _loans;
  @override
  List<LoanData>? get loans {
    final value = _loans;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BankData(id: $id, name: $name, logo: $logo, createdAt: $createdAt, updatedAt: $updatedAt, loans: $loans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other._loans, _loans));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(_loans));

  @JsonKey(ignore: true)
  @override
  _$$_BankDataCopyWith<_$_BankData> get copyWith =>
      __$$_BankDataCopyWithImpl<_$_BankData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankDataToJson(
      this,
    );
  }
}

abstract class _BankData implements BankData {
  const factory _BankData(
      {final int? id,
      final String? name,
      final String? logo,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      final List<LoanData>? loans}) = _$_BankData;

  factory _BankData.fromJson(Map<String, dynamic> json) = _$_BankData.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  List<LoanData>? get loans;
  @override
  @JsonKey(ignore: true)
  _$$_BankDataCopyWith<_$_BankData> get copyWith =>
      throw _privateConstructorUsedError;
}
