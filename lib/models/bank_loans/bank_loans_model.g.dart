// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_loans_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankLoansModel _$$_BankLoansModelFromJson(Map<String, dynamic> json) =>
    _$_BankLoansModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BankData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BankLoansModelToJson(_$_BankLoansModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_BankData _$$_BankDataFromJson(Map<String, dynamic> json) => _$_BankData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      loans: (json['loans'] as List<dynamic>?)
          ?.map((e) => LoanData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BankDataToJson(_$_BankData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'loans': instance.loans,
    };
