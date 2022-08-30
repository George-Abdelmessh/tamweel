
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamweel/models/loan/loan_model.dart';

part 'filter_category.freezed.dart';
part 'filter_category.g.dart';

@freezed
class FilterCategory with _$FilterCategory {
  const factory FilterCategory({
    String? status,
    String? message,
    List<LoanCard>? data,
  }) = _FilterCategory;

  factory FilterCategory.fromJson(Map<String, dynamic> json) =>
      _$FilterCategoryFromJson(json);
}

@freezed
class LoanCard with _$LoanCard {
  const factory LoanCard({
    int? id,
    String? name,
    String? logo,
    @JsonKey(name: 'bank_id') int? bankId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    List<LoanData>? loans,
  }) = _LoanCard;

  factory LoanCard.fromJson(Map<String, dynamic> json) =>
      _$LoanCardFromJson(json);
}
