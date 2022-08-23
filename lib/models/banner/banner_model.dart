
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    String? status,
    String? message,
    List<BannerData>? data,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);
}

@freezed
class BannerData with _$BannerData {
  const factory BannerData({
    int? id,
    String? title,
    String? image,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    int? loanId,
  }) = _Datum;

  factory BannerData.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
