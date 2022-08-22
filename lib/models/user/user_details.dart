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
    required String nationalId,
    required String mobile,
    required String email,
    required dynamic emailVerifiedAt,
    required int gender,
    required int maritalStatus,
    required int country,
    required int area,
    required String address,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}
