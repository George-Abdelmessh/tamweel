// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterCategory _$FilterCategoryFromJson(Map<String, dynamic> json) {
  return _FilterCategory.fromJson(json);
}

/// @nodoc
mixin _$FilterCategory {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<LoanCard>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterCategoryCopyWith<FilterCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCategoryCopyWith<$Res> {
  factory $FilterCategoryCopyWith(
          FilterCategory value, $Res Function(FilterCategory) then) =
      _$FilterCategoryCopyWithImpl<$Res>;
  $Res call({String? status, String? message, List<LoanCard>? data});
}

/// @nodoc
class _$FilterCategoryCopyWithImpl<$Res>
    implements $FilterCategoryCopyWith<$Res> {
  _$FilterCategoryCopyWithImpl(this._value, this._then);

  final FilterCategory _value;
  // ignore: unused_field
  final $Res Function(FilterCategory) _then;

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
              as List<LoanCard>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterCategoryCopyWith<$Res>
    implements $FilterCategoryCopyWith<$Res> {
  factory _$$_FilterCategoryCopyWith(
          _$_FilterCategory value, $Res Function(_$_FilterCategory) then) =
      __$$_FilterCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, List<LoanCard>? data});
}

/// @nodoc
class __$$_FilterCategoryCopyWithImpl<$Res>
    extends _$FilterCategoryCopyWithImpl<$Res>
    implements _$$_FilterCategoryCopyWith<$Res> {
  __$$_FilterCategoryCopyWithImpl(
      _$_FilterCategory _value, $Res Function(_$_FilterCategory) _then)
      : super(_value, (v) => _then(v as _$_FilterCategory));

  @override
  _$_FilterCategory get _value => super._value as _$_FilterCategory;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_FilterCategory(
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
              as List<LoanCard>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterCategory implements _FilterCategory {
  const _$_FilterCategory(
      {this.status, this.message, final List<LoanCard>? data})
      : _data = data;

  factory _$_FilterCategory.fromJson(Map<String, dynamic> json) =>
      _$$_FilterCategoryFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<LoanCard>? _data;
  @override
  List<LoanCard>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterCategory(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterCategory &&
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
  _$$_FilterCategoryCopyWith<_$_FilterCategory> get copyWith =>
      __$$_FilterCategoryCopyWithImpl<_$_FilterCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterCategoryToJson(
      this,
    );
  }
}

abstract class _FilterCategory implements FilterCategory {
  const factory _FilterCategory(
      {final String? status,
      final String? message,
      final List<LoanCard>? data}) = _$_FilterCategory;

  factory _FilterCategory.fromJson(Map<String, dynamic> json) =
      _$_FilterCategory.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<LoanCard>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_FilterCategoryCopyWith<_$_FilterCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

LoanCard _$LoanCardFromJson(Map<String, dynamic> json) {
  return _LoanCard.fromJson(json);
}

/// @nodoc
mixin _$LoanCard {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_id')
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<LoanData>? get loans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanCardCopyWith<LoanCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCardCopyWith<$Res> {
  factory $LoanCardCopyWith(LoanCard value, $Res Function(LoanCard) then) =
      _$LoanCardCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? logo,
      @JsonKey(name: 'bank_id') int? bankId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<LoanData>? loans});
}

/// @nodoc
class _$LoanCardCopyWithImpl<$Res> implements $LoanCardCopyWith<$Res> {
  _$LoanCardCopyWithImpl(this._value, this._then);

  final LoanCard _value;
  // ignore: unused_field
  final $Res Function(LoanCard) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? bankId = freezed,
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
      bankId: bankId == freezed
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_LoanCardCopyWith<$Res> implements $LoanCardCopyWith<$Res> {
  factory _$$_LoanCardCopyWith(
          _$_LoanCard value, $Res Function(_$_LoanCard) then) =
      __$$_LoanCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? logo,
      @JsonKey(name: 'bank_id') int? bankId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<LoanData>? loans});
}

/// @nodoc
class __$$_LoanCardCopyWithImpl<$Res> extends _$LoanCardCopyWithImpl<$Res>
    implements _$$_LoanCardCopyWith<$Res> {
  __$$_LoanCardCopyWithImpl(
      _$_LoanCard _value, $Res Function(_$_LoanCard) _then)
      : super(_value, (v) => _then(v as _$_LoanCard));

  @override
  _$_LoanCard get _value => super._value as _$_LoanCard;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? bankId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? loans = freezed,
  }) {
    return _then(_$_LoanCard(
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
      bankId: bankId == freezed
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_LoanCard implements _LoanCard {
  const _$_LoanCard(
      {this.id,
      this.name,
      this.logo,
      @JsonKey(name: 'bank_id') this.bankId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      final List<LoanData>? loans})
      : _loans = loans;

  factory _$_LoanCard.fromJson(Map<String, dynamic> json) =>
      _$$_LoanCardFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'bank_id')
  final int? bankId;
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
    return 'LoanCard(id: $id, name: $name, logo: $logo, bankId: $bankId, createdAt: $createdAt, updatedAt: $updatedAt, loans: $loans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanCard &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.bankId, bankId) &&
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
      const DeepCollectionEquality().hash(bankId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(_loans));

  @JsonKey(ignore: true)
  @override
  _$$_LoanCardCopyWith<_$_LoanCard> get copyWith =>
      __$$_LoanCardCopyWithImpl<_$_LoanCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoanCardToJson(
      this,
    );
  }
}

abstract class _LoanCard implements LoanCard {
  const factory _LoanCard(
      {final int? id,
      final String? name,
      final String? logo,
      @JsonKey(name: 'bank_id') final int? bankId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      final List<LoanData>? loans}) = _$_LoanCard;

  factory _LoanCard.fromJson(Map<String, dynamic> json) = _$_LoanCard.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'bank_id')
  int? get bankId;
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
  _$$_LoanCardCopyWith<_$_LoanCard> get copyWith =>
      throw _privateConstructorUsedError;
}
