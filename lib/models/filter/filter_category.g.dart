// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'filter_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterCategory _$$_FilterCategoryFromJson(Map<String, dynamic> json) =>
    _$_FilterCategory(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LoanCard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FilterCategoryToJson(_$_FilterCategory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_LoanCard _$$_LoanCardFromJson(Map<String, dynamic> json) => _$_LoanCard(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      bankId: json['bank_id'] as int?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      loans: (json['loans'] as List<dynamic>?)
          ?.map((e) => LoanData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoanCardToJson(_$_LoanCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'bank_id': instance.bankId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'loans': instance.loans,
    };
