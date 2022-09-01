// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetails _$$_UserDetailsFromJson(Map<String, dynamic> json) =>
    _$_UserDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      nationalId: json['national_id'] as String,
      mobile: json['mobile'] as String,
      email: json['email'] as String,
      emailVerifiedAt: json['email_verified_at'],
      gender: json['gender'] as int,
      maritalStatus: json['marital_status'] as int,
      country: json['country'] as String,
      area: json['area'] as String,
      address: json['address'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_UserDetailsToJson(_$_UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'national_id': instance.nationalId,
      'mobile': instance.mobile,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'gender': instance.gender,
      'marital_status': instance.maritalStatus,
      'country': instance.country,
      'area': instance.area,
      'address': instance.address,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
