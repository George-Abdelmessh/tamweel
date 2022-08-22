// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetails _$$_UserDetailsFromJson(Map<String, dynamic> json) =>
    _$_UserDetails(
      id: json['id'] as int,
      name: json['name'] as String,
      nationalId: json['nationalId'] as String,
      mobile: json['mobile'] as String,
      email: json['email'] as String,
      emailVerifiedAt: json['emailVerifiedAt'],
      gender: json['gender'] as int,
      maritalStatus: json['maritalStatus'] as int,
      country: json['country'] as int,
      area: json['area'] as int,
      address: json['address'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_UserDetailsToJson(_$_UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nationalId': instance.nationalId,
      'mobile': instance.mobile,
      'email': instance.email,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'gender': instance.gender,
      'maritalStatus': instance.maritalStatus,
      'country': instance.country,
      'area': instance.area,
      'address': instance.address,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
