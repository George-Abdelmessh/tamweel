import 'package:freezed_annotation/freezed_annotation.dart';

part 'most_wanted_loan_model.freezed.dart';
part 'most_wanted_loan_model.g.dart';

@freezed
class MostWantedLoanModel with _$MostWantedLoanModel {
  const factory MostWantedLoanModel({
    String? status,
    String? message,
    List<MostWantedLoanData>? data,
  }) = _MostWantedLoanModel;

  factory MostWantedLoanModel.fromJson(Map<String, dynamic> json) => _$MostWantedLoanModelFromJson(json);
}

@freezed
class MostWantedLoanData with _$MostWantedLoanData {
  const factory MostWantedLoanData({
    int? id,
    String? name,
    String? image,
    int? rate,
    String? cardLoanAmount,
    String? headerTitle,
    String? maxLoanAmount,
    String? buttonText,
    String? meetingFees,
    String? footerTitle,
    String? maxRepayLoan,
    String? footerDescription,
    String? durationPayment,
    int? bankId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Datum;

  factory MostWantedLoanData.fromJson(Map<String, dynamic> json) => _$MostWantedLoanDataFromJson(json);
}
