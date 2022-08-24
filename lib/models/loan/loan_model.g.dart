// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoanModel _$$_LoanModelFromJson(Map<String, dynamic> json) => _$_LoanModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LoanData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoanModelToJson(_$_LoanModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_LoanData _$$_LoanDataFromJson(Map<String, dynamic> json) => _$_LoanData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      initRate: json['init_rate'] as int?,
      cardReachTo: json['card_reach_to'] as String?,
      cardRepayment: json['card_repayment'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      buttonText: json['button_text'] as String?,
      loanFee: json['loan_fee'] as String?,
      costBenefit: json['cost_benefit'] as String?,
      profileImage: json['profile_image'] as String?,
      loanRequirement: json['loan_requirement'] as String?,
      bankId: json['bank_id'] as int?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_LoanDataToJson(_$_LoanData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'init_rate': instance.initRate,
      'card_reach_to': instance.cardReachTo,
      'card_repayment': instance.cardRepayment,
      'title': instance.title,
      'description': instance.description,
      'button_text': instance.buttonText,
      'loan_fee': instance.loanFee,
      'cost_benefit': instance.costBenefit,
      'profile_image': instance.profileImage,
      'loan_requirement': instance.loanRequirement,
      'bank_id': instance.bankId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
