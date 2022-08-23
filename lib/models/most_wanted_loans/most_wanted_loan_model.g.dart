// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_wanted_loan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MostWantedLoanModel _$$_MostWantedLoanModelFromJson(
        Map<String, dynamic> json) =>
    _$_MostWantedLoanModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MostWantedLoanData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MostWantedLoanModelToJson(
        _$_MostWantedLoanModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      rate: json['rate'] as int?,
      cardLoanAmount: json['cardLoanAmount'] as String?,
      headerTitle: json['headerTitle'] as String?,
      maxLoanAmount: json['maxLoanAmount'] as String?,
      buttonText: json['buttonText'] as String?,
      meetingFees: json['meetingFees'] as String?,
      footerTitle: json['footerTitle'] as String?,
      maxRepayLoan: json['maxRepayLoan'] as String?,
      footerDescription: json['footerDescription'] as String?,
      durationPayment: json['durationPayment'] as String?,
      bankId: json['bankId'] as int?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'rate': instance.rate,
      'cardLoanAmount': instance.cardLoanAmount,
      'headerTitle': instance.headerTitle,
      'maxLoanAmount': instance.maxLoanAmount,
      'buttonText': instance.buttonText,
      'meetingFees': instance.meetingFees,
      'footerTitle': instance.footerTitle,
      'maxRepayLoan': instance.maxRepayLoan,
      'footerDescription': instance.footerDescription,
      'durationPayment': instance.durationPayment,
      'bankId': instance.bankId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
