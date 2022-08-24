//ignore_for_file: argument_type_not_assignable, avoid_dynamic_calls, invalid_assignment
class LoanModel {
  String? status;
  String? message;
  List<LoanData>? data;

  LoanModel({this.status, this.message, this.data});

  LoanModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <LoanData>[];
      json['data'].forEach((v) {
        data!.add(new LoanData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LoanData {
  int? id;
  String? name;
  String? image;
  int? initRate;
  String? cardReachTo;
  String? cardRepayment;
  String? title;
  String? description;
  String? buttonText;
  String? loanFee;
  String? costBenefit;
  String? profileImage;
  String? loanRequirement;
  int? bankId;
  String? createdAt;
  String? updatedAt;

  LoanData(
      {this.id,
        this.name,
        this.image,
        this.initRate,
        this.cardReachTo,
        this.cardRepayment,
        this.title,
        this.description,
        this.buttonText,
        this.loanFee,
        this.costBenefit,
        this.profileImage,
        this.loanRequirement,
        this.bankId,
        this.createdAt,
        this.updatedAt});

  LoanData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    initRate = json['init_rate'];
    cardReachTo = json['card_reach_to'];
    cardRepayment = json['card_repayment'];
    title = json['title'];
    description = json['description'];
    buttonText = json['button_text'];
    loanFee = json['loan_fee'];
    costBenefit = json['cost_benefit'];
    profileImage = json['profile_image'];
    loanRequirement = json['loan_requirement'];
    bankId = json['bank_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['init_rate'] = this.initRate;
    data['card_reach_to'] = this.cardReachTo;
    data['card_repayment'] = this.cardRepayment;
    data['title'] = this.title;
    data['description'] = this.description;
    data['button_text'] = this.buttonText;
    data['loan_fee'] = this.loanFee;
    data['cost_benefit'] = this.costBenefit;
    data['profile_image'] = this.profileImage;
    data['loan_requirement'] = this.loanRequirement;
    data['bank_id'] = this.bankId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
