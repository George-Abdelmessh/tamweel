// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'most_wanted_loan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MostWantedLoanModel _$MostWantedLoanModelFromJson(Map<String, dynamic> json) {
  return _MostWantedLoanModel.fromJson(json);
}

/// @nodoc
mixin _$MostWantedLoanModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<MostWantedLoanData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MostWantedLoanModelCopyWith<MostWantedLoanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostWantedLoanModelCopyWith<$Res> {
  factory $MostWantedLoanModelCopyWith(
          MostWantedLoanModel value, $Res Function(MostWantedLoanModel) then) =
      _$MostWantedLoanModelCopyWithImpl<$Res>;
  $Res call({String? status, String? message, List<MostWantedLoanData>? data});
}

/// @nodoc
class _$MostWantedLoanModelCopyWithImpl<$Res>
    implements $MostWantedLoanModelCopyWith<$Res> {
  _$MostWantedLoanModelCopyWithImpl(this._value, this._then);

  final MostWantedLoanModel _value;
  // ignore: unused_field
  final $Res Function(MostWantedLoanModel) _then;

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
              as List<MostWantedLoanData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MostWantedLoanModelCopyWith<$Res>
    implements $MostWantedLoanModelCopyWith<$Res> {
  factory _$$_MostWantedLoanModelCopyWith(_$_MostWantedLoanModel value,
          $Res Function(_$_MostWantedLoanModel) then) =
      __$$_MostWantedLoanModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, List<MostWantedLoanData>? data});
}

/// @nodoc
class __$$_MostWantedLoanModelCopyWithImpl<$Res>
    extends _$MostWantedLoanModelCopyWithImpl<$Res>
    implements _$$_MostWantedLoanModelCopyWith<$Res> {
  __$$_MostWantedLoanModelCopyWithImpl(_$_MostWantedLoanModel _value,
      $Res Function(_$_MostWantedLoanModel) _then)
      : super(_value, (v) => _then(v as _$_MostWantedLoanModel));

  @override
  _$_MostWantedLoanModel get _value => super._value as _$_MostWantedLoanModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_MostWantedLoanModel(
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
              as List<MostWantedLoanData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MostWantedLoanModel implements _MostWantedLoanModel {
  const _$_MostWantedLoanModel(
      {this.status, this.message, final List<MostWantedLoanData>? data})
      : _data = data;

  factory _$_MostWantedLoanModel.fromJson(Map<String, dynamic> json) =>
      _$$_MostWantedLoanModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<MostWantedLoanData>? _data;
  @override
  List<MostWantedLoanData>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MostWantedLoanModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MostWantedLoanModel &&
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
  _$$_MostWantedLoanModelCopyWith<_$_MostWantedLoanModel> get copyWith =>
      __$$_MostWantedLoanModelCopyWithImpl<_$_MostWantedLoanModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MostWantedLoanModelToJson(
      this,
    );
  }
}

abstract class _MostWantedLoanModel implements MostWantedLoanModel {
  const factory _MostWantedLoanModel(
      {final String? status,
      final String? message,
      final List<MostWantedLoanData>? data}) = _$_MostWantedLoanModel;

  factory _MostWantedLoanModel.fromJson(Map<String, dynamic> json) =
      _$_MostWantedLoanModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<MostWantedLoanData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_MostWantedLoanModelCopyWith<_$_MostWantedLoanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MostWantedLoanData _$MostWantedLoanDataFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$MostWantedLoanData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  String? get cardLoanAmount => throw _privateConstructorUsedError;
  String? get headerTitle => throw _privateConstructorUsedError;
  String? get maxLoanAmount => throw _privateConstructorUsedError;
  String? get buttonText => throw _privateConstructorUsedError;
  String? get meetingFees => throw _privateConstructorUsedError;
  String? get footerTitle => throw _privateConstructorUsedError;
  String? get maxRepayLoan => throw _privateConstructorUsedError;
  String? get footerDescription => throw _privateConstructorUsedError;
  String? get durationPayment => throw _privateConstructorUsedError;
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MostWantedLoanDataCopyWith<MostWantedLoanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostWantedLoanDataCopyWith<$Res> {
  factory $MostWantedLoanDataCopyWith(
          MostWantedLoanData value, $Res Function(MostWantedLoanData) then) =
      _$MostWantedLoanDataCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? rate,
      String? cardLoanAmount,
      String? headerTitle,
      String? maxLoanAmount,
      String? buttonText,
      String? meetingFees,
      String? footerTitle,
      String? maxRepayLoan,
      String? footerDescription,
      String? durationPayment,
      int? bankId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$MostWantedLoanDataCopyWithImpl<$Res>
    implements $MostWantedLoanDataCopyWith<$Res> {
  _$MostWantedLoanDataCopyWithImpl(this._value, this._then);

  final MostWantedLoanData _value;
  // ignore: unused_field
  final $Res Function(MostWantedLoanData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? rate = freezed,
    Object? cardLoanAmount = freezed,
    Object? headerTitle = freezed,
    Object? maxLoanAmount = freezed,
    Object? buttonText = freezed,
    Object? meetingFees = freezed,
    Object? footerTitle = freezed,
    Object? maxRepayLoan = freezed,
    Object? footerDescription = freezed,
    Object? durationPayment = freezed,
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
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      cardLoanAmount: cardLoanAmount == freezed
          ? _value.cardLoanAmount
          : cardLoanAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      headerTitle: headerTitle == freezed
          ? _value.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLoanAmount: maxLoanAmount == freezed
          ? _value.maxLoanAmount
          : maxLoanAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingFees: meetingFees == freezed
          ? _value.meetingFees
          : meetingFees // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitle: footerTitle == freezed
          ? _value.footerTitle
          : footerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRepayLoan: maxRepayLoan == freezed
          ? _value.maxRepayLoan
          : maxRepayLoan // ignore: cast_nullable_to_non_nullable
              as String?,
      footerDescription: footerDescription == freezed
          ? _value.footerDescription
          : footerDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      durationPayment: durationPayment == freezed
          ? _value.durationPayment
          : durationPayment // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DatumCopyWith<$Res>
    implements $MostWantedLoanDataCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? image,
      int? rate,
      String? cardLoanAmount,
      String? headerTitle,
      String? maxLoanAmount,
      String? buttonText,
      String? meetingFees,
      String? footerTitle,
      String? maxRepayLoan,
      String? footerDescription,
      String? durationPayment,
      int? bankId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res>
    extends _$MostWantedLoanDataCopyWithImpl<$Res>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, (v) => _then(v as _$_Datum));

  @override
  _$_Datum get _value => super._value as _$_Datum;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? rate = freezed,
    Object? cardLoanAmount = freezed,
    Object? headerTitle = freezed,
    Object? maxLoanAmount = freezed,
    Object? buttonText = freezed,
    Object? meetingFees = freezed,
    Object? footerTitle = freezed,
    Object? maxRepayLoan = freezed,
    Object? footerDescription = freezed,
    Object? durationPayment = freezed,
    Object? bankId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Datum(
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
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      cardLoanAmount: cardLoanAmount == freezed
          ? _value.cardLoanAmount
          : cardLoanAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      headerTitle: headerTitle == freezed
          ? _value.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLoanAmount: maxLoanAmount == freezed
          ? _value.maxLoanAmount
          : maxLoanAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingFees: meetingFees == freezed
          ? _value.meetingFees
          : meetingFees // ignore: cast_nullable_to_non_nullable
              as String?,
      footerTitle: footerTitle == freezed
          ? _value.footerTitle
          : footerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRepayLoan: maxRepayLoan == freezed
          ? _value.maxRepayLoan
          : maxRepayLoan // ignore: cast_nullable_to_non_nullable
              as String?,
      footerDescription: footerDescription == freezed
          ? _value.footerDescription
          : footerDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      durationPayment: durationPayment == freezed
          ? _value.durationPayment
          : durationPayment // ignore: cast_nullable_to_non_nullable
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
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.id,
      this.name,
      this.image,
      this.rate,
      this.cardLoanAmount,
      this.headerTitle,
      this.maxLoanAmount,
      this.buttonText,
      this.meetingFees,
      this.footerTitle,
      this.maxRepayLoan,
      this.footerDescription,
      this.durationPayment,
      this.bankId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? rate;
  @override
  final String? cardLoanAmount;
  @override
  final String? headerTitle;
  @override
  final String? maxLoanAmount;
  @override
  final String? buttonText;
  @override
  final String? meetingFees;
  @override
  final String? footerTitle;
  @override
  final String? maxRepayLoan;
  @override
  final String? footerDescription;
  @override
  final String? durationPayment;
  @override
  final int? bankId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MostWantedLoanData(id: $id, name: $name, image: $image, rate: $rate, cardLoanAmount: $cardLoanAmount, headerTitle: $headerTitle, maxLoanAmount: $maxLoanAmount, buttonText: $buttonText, meetingFees: $meetingFees, footerTitle: $footerTitle, maxRepayLoan: $maxRepayLoan, footerDescription: $footerDescription, durationPayment: $durationPayment, bankId: $bankId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality()
                .equals(other.cardLoanAmount, cardLoanAmount) &&
            const DeepCollectionEquality()
                .equals(other.headerTitle, headerTitle) &&
            const DeepCollectionEquality()
                .equals(other.maxLoanAmount, maxLoanAmount) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText) &&
            const DeepCollectionEquality()
                .equals(other.meetingFees, meetingFees) &&
            const DeepCollectionEquality()
                .equals(other.footerTitle, footerTitle) &&
            const DeepCollectionEquality()
                .equals(other.maxRepayLoan, maxRepayLoan) &&
            const DeepCollectionEquality()
                .equals(other.footerDescription, footerDescription) &&
            const DeepCollectionEquality()
                .equals(other.durationPayment, durationPayment) &&
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
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(cardLoanAmount),
      const DeepCollectionEquality().hash(headerTitle),
      const DeepCollectionEquality().hash(maxLoanAmount),
      const DeepCollectionEquality().hash(buttonText),
      const DeepCollectionEquality().hash(meetingFees),
      const DeepCollectionEquality().hash(footerTitle),
      const DeepCollectionEquality().hash(maxRepayLoan),
      const DeepCollectionEquality().hash(footerDescription),
      const DeepCollectionEquality().hash(durationPayment),
      const DeepCollectionEquality().hash(bankId),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

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

abstract class _Datum implements MostWantedLoanData {
  const factory _Datum(
          {final int? id,
          final String? name,
          final String? image,
          final int? rate,
          final String? cardLoanAmount,
          final String? headerTitle,
          final String? maxLoanAmount,
          final String? buttonText,
          final String? meetingFees,
          final String? footerTitle,
          final String? maxRepayLoan,
          final String? footerDescription,
          final String? durationPayment,
          final int? bankId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get rate;
  @override
  String? get cardLoanAmount;
  @override
  String? get headerTitle;
  @override
  String? get maxLoanAmount;
  @override
  String? get buttonText;
  @override
  String? get meetingFees;
  @override
  String? get footerTitle;
  @override
  String? get maxRepayLoan;
  @override
  String? get footerDescription;
  @override
  String? get durationPayment;
  @override
  int? get bankId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}
