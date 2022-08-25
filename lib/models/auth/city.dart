// To parse this JSON data, do
//
//     final city = cityFromMap(jsonString);
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

/// The City class is a model class that represents a city.
///
/// Each City has a name in Arabic and English, as well as a unique ID, and a governorate ID,
/// which is the ID of the governorate that the city belongs to.
@freezed
class City with _$City {
  const factory City({
    required String id,
    @JsonKey(name: 'governorate_id') required String governorateId,
    @JsonKey(name: 'city_name_ar') required String cityNameAr,
    @JsonKey(name: 'city_name_en') required String cityNameEn,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
