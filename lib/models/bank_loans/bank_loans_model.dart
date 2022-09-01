import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamweel/models/loan/loan_model.dart';

part 'bank_loans_model.freezed.dart';
part 'bank_loans_model.g.dart';

@freezed
class BankLoansModel with _$BankLoansModel {
  const factory BankLoansModel({
    String? status,
    String? message,
    List<BankData>? data,
  }) = _BankLoansModel;

  factory BankLoansModel.fromJson(Map<String, dynamic> json) =>
      _$BankLoansModelFromJson(json);
}

@freezed
class BankData with _$BankData {
  const factory BankData({
    int? id,
    String? name,
    String? logo,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    List<LoanData>? loans,
  }) = _BankData;

  factory BankData.fromJson(Map<String, dynamic> json) =>
      _$BankDataFromJson(json);
}
