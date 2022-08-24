// To parse this JSON data, do
//
//     final userDetails = userDetailsFromMap(jsonString);

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details.freezed.dart';
part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    required int id,
    required String name,
    @JsonKey(name: 'national_id') required String nationalId,
    required String mobile,
    required String email,
    @JsonKey(name: 'email_verified_at') required dynamic emailVerifiedAt,
    required int gender,
    @JsonKey(name: 'marital_status') required int maritalStatus,
    required int country,
    required int area,
    required String address,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}