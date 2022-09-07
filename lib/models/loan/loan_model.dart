import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_model.freezed.dart';
part 'loan_model.g.dart';

@freezed
class LoanModel with _$LoanModel {
  const factory LoanModel({
    String? status,
    String? message,
    List<LoanData>? data,
  }) = _LoanModel;

  factory LoanModel.fromJson(Map<String, dynamic> json) =>
      _$LoanModelFromJson(json);
}

@freezed
class LoanData with _$LoanData {
  const factory LoanData({
    int? id,
    String? name,
    String? image,
    @JsonKey(name: 'init_rate') int? initRate,
    @JsonKey(name: 'card_reach_to') String? cardReachTo,
    @JsonKey(name: 'card_repayment') String? cardRepayment,
    String? title,
    String? description,
    @JsonKey(name: 'button_text') String? buttonText,
    @JsonKey(name: 'is_available') int? isAvailable,
    @JsonKey(name: 'loan_fee') String? loanFee,
    @JsonKey(name: 'cost_benefit') String? costBenefit,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'loan_requirement') String? loanRequirement,
    @JsonKey(name: 'bank_id') int? bankId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _LoanData;

  factory LoanData.fromJson(Map<String, dynamic> json) =>
      _$LoanDataFromJson(json);
}
