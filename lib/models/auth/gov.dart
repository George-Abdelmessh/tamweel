// To parse this JSON data, do
//
//     final gov = govFromMap(jsonString);
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gov.freezed.dart';
part 'gov.g.dart';

@freezed
class Gov with _$Gov {
  const factory Gov({
    required String id,
    @JsonKey(name: 'governorate_name_ar') required String governorateNameAr,
    @JsonKey(name: 'governorate_name_en') required String governorateNameEn,
  }) = _Gov;

  factory Gov.fromJson(Map<String, dynamic> json) => _$GovFromJson(json);
}
