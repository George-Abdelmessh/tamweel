// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoanModel _$LoanModelFromJson(Map<String, dynamic> json) {
  return _LoanModel.fromJson(json);
}

/// @nodoc
mixin _$LoanModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<LoanData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanModelCopyWith<LoanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanModelCopyWith<$Res> {
  factory $LoanModelCopyWith(LoanModel value, $Res Function(LoanModel) then) =
      _$LoanModelCopyWithImpl<$Res>;
  $Res call({String? status, String? message, List<LoanData>? data});
}

/// @nodoc
class _$LoanModelCopyWithImpl<$Res> implements $LoanModelCopyWith<$Res> {
  _$LoanModelCopyWithImpl(this._value, this._then);

  final LoanModel _value;
  // ignore: unused_field
  final $Res Function(LoanModel) _then;

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
              as List<LoanData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoanModelCopyWith<$Res> implements $LoanModelCopyWith<$Res> {
  factory _$$_LoanModelCopyWith(
          _$_LoanModel value, $Res Function(_$_LoanModel) then) =
      __$$_LoanModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, List<LoanData>? data});
}

/// @nodoc
class __$$_LoanModelCopyWithImpl<$Res> extends _$LoanModelCopyWithImpl<$Res>
    implements _$$_LoanModelCopyWith<$Res> {
  __$$_LoanModelCopyWithImpl(
      _$_LoanModel _value, $Res Function(_$_LoanModel) _then)
      : super(_value, (v) => _then(v as _$_LoanModel));

  @override
  _$_LoanModel get _value => super._value as _$_LoanModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LoanModel(
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
              as List<LoanData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoanModel implements _LoanModel {
  const _$_LoanModel({this.status, this.message, final List<LoanData>? data})
      : _data = data;

  factory _$_LoanModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoanModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<LoanData>? _data;
  @override
  List<LoanData>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoanModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanModel &&
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
  _$$_LoanModelCopyWith<_$_LoanModel> get copyWith =>
      __$$_LoanModelCopyWithImpl<_$_LoanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoanModelToJson(
      this,
    );
  }
}

abstract class _LoanModel implements LoanModel {
  const factory _LoanModel(
      {final String? status,
      final String? message,
      final List<LoanData>? data}) = _$_LoanModel;

  factory _LoanModel.fromJson(Map<String, dynamic> json) =
      _$_LoanModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<LoanData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoanModelCopyWith<_$_LoanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LoanData _$LoanDataFromJson(Map<String, dynamic> json) {
  return _LoanData.fromJson(json);
}

/// @nodoc
mixin _$LoanData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'init_rate')
  int? get initRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_reach_to')
  String? get cardReachTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_repayment')
  String? get cardRepayment => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'button_text')
  String? get buttonText => throw _privateConstructorUsedError;
  @JsonKey(name: 'loan_fee')
  String? get loanFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_benefit')
  String? get costBenefit => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'loan_requirement')
  String? get loanRequirement => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_id')
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanDataCopyWith<LoanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanDataCopyWith<$Res> {
  factory $LoanDataCopyWith(LoanData value, $Res Function(LoanData) then) =
      _$LoanDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? image,
      @JsonKey(name: 'init_rate') int? initRate,
      @JsonKey(name: 'card_reach_to') String? cardReachTo,
      @JsonKey(name: 'card_repayment') String? cardRepayment,
      String? title,
      String? description,
      @JsonKey(name: 'button_text') String? buttonText,
      @JsonKey(name: 'loan_fee') String? loanFee,
      @JsonKey(name: 'cost_benefit') String? costBenefit,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'loan_requirement') String? loanRequirement,
      @JsonKey(name: 'bank_id') int? bankId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$LoanDataCopyWithImpl<$Res> implements $LoanDataCopyWith<$Res> {
  _$LoanDataCopyWithImpl(this._value, this._then);

  final LoanData _value;
  // ignore: unused_field
  final $Res Function(LoanData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? initRate = freezed,
    Object? cardReachTo = freezed,
    Object? cardRepayment = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? buttonText = freezed,
    Object? loanFee = freezed,
    Object? costBenefit = freezed,
    Object? profileImage = freezed,
    Object? loanRequirement = freezed,
    Object? bankId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      initRate: initRate == freezed
          ? _value.initRate
          : initRate // ignore: cast_nullable_to_non_nullable
              as int?,
      cardReachTo: cardReachTo == freezed
          ? _value.cardReachTo
          : cardReachTo // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRepayment: cardRepayment == freezed
          ? _value.cardRepayment
          : cardRepayment // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      loanFee: loanFee == freezed
          ? _value.loanFee
          : loanFee // ignore: cast_nullable_to_non_nullable
              as String?,
      costBenefit: costBenefit == freezed
          ? _value.costBenefit
          : costBenefit // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      loanRequirement: loanRequirement == freezed
          ? _value.loanRequirement
          : loanRequirement // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$$_LoanDataCopyWith<$Res> implements $LoanDataCopyWith<$Res> {
  factory _$$_LoanDataCopyWith(
          _$_LoanData value, $Res Function(_$_LoanData) then) =
      __$$_LoanDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? image,
      @JsonKey(name: 'init_rate') int? initRate,
      @JsonKey(name: 'card_reach_to') String? cardReachTo,
      @JsonKey(name: 'card_repayment') String? cardRepayment,
      String? title,
      String? description,
      @JsonKey(name: 'button_text') String? buttonText,
      @JsonKey(name: 'loan_fee') String? loanFee,
      @JsonKey(name: 'cost_benefit') String? costBenefit,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'loan_requirement') String? loanRequirement,
      @JsonKey(name: 'bank_id') int? bankId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$_LoanDataCopyWithImpl<$Res> extends _$LoanDataCopyWithImpl<$Res>
    implements _$$_LoanDataCopyWith<$Res> {
  __$$_LoanDataCopyWithImpl(
      _$_LoanData _value, $Res Function(_$_LoanData) _then)
      : super(_value, (v) => _then(v as _$_LoanData));

  @override
  _$_LoanData get _value => super._value as _$_LoanData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? initRate = freezed,
    Object? cardReachTo = freezed,
    Object? cardRepayment = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? buttonText = freezed,
    Object? loanFee = freezed,
    Object? costBenefit = freezed,
    Object? profileImage = freezed,
    Object? loanRequirement = freezed,
    Object? bankId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LoanData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      initRate: initRate == freezed
          ? _value.initRate
          : initRate // ignore: cast_nullable_to_non_nullable
              as int?,
      cardReachTo: cardReachTo == freezed
          ? _value.cardReachTo
          : cardReachTo // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRepayment: cardRepayment == freezed
          ? _value.cardRepayment
          : cardRepayment // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      loanFee: loanFee == freezed
          ? _value.loanFee
          : loanFee // ignore: cast_nullable_to_non_nullable
              as String?,
      costBenefit: costBenefit == freezed
          ? _value.costBenefit
          : costBenefit // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      loanRequirement: loanRequirement == freezed
          ? _value.loanRequirement
          : loanRequirement // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoanData implements _LoanData {
  const _$_LoanData(
      {this.id,
      this.name,
      this.image,
      @JsonKey(name: 'init_rate') this.initRate,
      @JsonKey(name: 'card_reach_to') this.cardReachTo,
      @JsonKey(name: 'card_repayment') this.cardRepayment,
      this.title,
      this.description,
      @JsonKey(name: 'button_text') this.buttonText,
      @JsonKey(name: 'loan_fee') this.loanFee,
      @JsonKey(name: 'cost_benefit') this.costBenefit,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'loan_requirement') this.loanRequirement,
      @JsonKey(name: 'bank_id') this.bankId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_LoanData.fromJson(Map<String, dynamic> json) =>
      _$$_LoanDataFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  @JsonKey(name: 'init_rate')
  final int? initRate;
  @override
  @JsonKey(name: 'card_reach_to')
  final String? cardReachTo;
  @override
  @JsonKey(name: 'card_repayment')
  final String? cardRepayment;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'button_text')
  final String? buttonText;
  @override
  @JsonKey(name: 'loan_fee')
  final String? loanFee;
  @override
  @JsonKey(name: 'cost_benefit')
  final String? costBenefit;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'loan_requirement')
  final String? loanRequirement;
  @override
  @JsonKey(name: 'bank_id')
  final int? bankId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'LoanData(id: $id, name: $name, image: $image, initRate: $initRate, cardReachTo: $cardReachTo, cardRepayment: $cardRepayment, title: $title, description: $description, buttonText: $buttonText, loanFee: $loanFee, costBenefit: $costBenefit, profileImage: $profileImage, loanRequirement: $loanRequirement, bankId: $bankId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.initRate, initRate) &&
            const DeepCollectionEquality()
                .equals(other.cardReachTo, cardReachTo) &&
            const DeepCollectionEquality()
                .equals(other.cardRepayment, cardRepayment) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText) &&
            const DeepCollectionEquality().equals(other.loanFee, loanFee) &&
            const DeepCollectionEquality()
                .equals(other.costBenefit, costBenefit) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality()
                .equals(other.loanRequirement, loanRequirement) &&
            const DeepCollectionEquality().equals(other.bankId, bankId) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(initRate),
      const DeepCollectionEquality().hash(cardReachTo),
      const DeepCollectionEquality().hash(cardRepayment),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(buttonText),
      const DeepCollectionEquality().hash(loanFee),
      const DeepCollectionEquality().hash(costBenefit),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(loanRequirement),
      const DeepCollectionEquality().hash(bankId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_LoanDataCopyWith<_$_LoanData> get copyWith =>
      __$$_LoanDataCopyWithImpl<_$_LoanData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoanDataToJson(
      this,
    );
  }
}

abstract class _LoanData implements LoanData {
  const factory _LoanData(
          {final int? id,
          final String? name,
          final String? image,
          @JsonKey(name: 'init_rate') final int? initRate,
          @JsonKey(name: 'card_reach_to') final String? cardReachTo,
          @JsonKey(name: 'card_repayment') final String? cardRepayment,
          final String? title,
          final String? description,
          @JsonKey(name: 'button_text') final String? buttonText,
          @JsonKey(name: 'loan_fee') final String? loanFee,
          @JsonKey(name: 'cost_benefit') final String? costBenefit,
          @JsonKey(name: 'profile_image') final String? profileImage,
          @JsonKey(name: 'loan_requirement') final String? loanRequirement,
          @JsonKey(name: 'bank_id') final int? bankId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$_LoanData;

  factory _LoanData.fromJson(Map<String, dynamic> json) = _$_LoanData.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(name: 'init_rate')
  int? get initRate;
  @override
  @JsonKey(name: 'card_reach_to')
  String? get cardReachTo;
  @override
  @JsonKey(name: 'card_repayment')
  String? get cardRepayment;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'button_text')
  String? get buttonText;
  @override
  @JsonKey(name: 'loan_fee')
  String? get loanFee;
  @override
  @JsonKey(name: 'cost_benefit')
  String? get costBenefit;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'loan_requirement')
  String? get loanRequirement;
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
  @JsonKey(ignore: true)
  _$$_LoanDataCopyWith<_$_LoanData> get copyWith =>
      throw _privateConstructorUsedError;
}
