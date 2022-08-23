//ignore_for_file: argument_type_not_assignable, avoid_dynamic_calls, invalid_assignment

class LoanModel {
  LoanModel({this.status, this.message, this.data});
  LoanModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
  String? status;
  String? message;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  Data({
    this.id,
    this.name,
    this.image,
    this.rate,
    this.cardLoanAmount,
    this.headerTitle,
    this.maxLoanAmount,
    this.buttonText,
    this.meetingFees,
    this.footerTitle,
    this.maxRepayLoan,
    this.footerDescription,
    this.durationPayment,
    this.bankId,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    rate = json['rate'];
    cardLoanAmount = json['card_loan_amount'];
    headerTitle = json['header_title'];
    maxLoanAmount = json['max_loan_amount'];
    buttonText = json['button_text'];
    meetingFees = json['meeting_fees'];
    footerTitle = json['footer_title'];
    maxRepayLoan = json['max_repay_loan'];
    footerDescription = json['footer_description'];
    durationPayment = json['duration_payment'];
    bankId = json['bank_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? name;
  String? image;
  int? rate;
  String? cardLoanAmount;
  String? headerTitle;
  String? maxLoanAmount;
  String? buttonText;
  String? meetingFees;
  String? footerTitle;
  String? maxRepayLoan;
  String? footerDescription;
  String? durationPayment;
  int? bankId;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['rate'] = rate;
    data['card_loan_amount'] = cardLoanAmount;
    data['header_title'] = headerTitle;
    data['max_loan_amount'] = maxLoanAmount;
    data['button_text'] = buttonText;
    data['meeting_fees'] = meetingFees;
    data['footer_title'] = footerTitle;
    data['max_repay_loan'] = maxRepayLoan;
    data['footer_description'] = footerDescription;
    data['duration_payment'] = durationPayment;
    data['bank_id'] = bankId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
