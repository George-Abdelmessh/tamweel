import 'dart:convert';

class FinancingProgramsModel {
  FinancingProgramsModel({
    this.status,
    this.message,
    this.data,
  });

  factory FinancingProgramsModel.fromJson(Map<String, dynamic> json) =>
      FinancingProgramsModel(
        status: json['status'] as String,
        message: json['message'] as String,
        data: List<FinancingProgramData>.from(
        //ignore: argument_type_not_assignable, avoid_dynamic_calls
            json['data'].map((x) => FinancingProgramData.fromJson(x)),),
      );

  factory FinancingProgramsModel.fromRawJson(String str) =>
      FinancingProgramsModel.fromJson(json.decode(str) as Map<String, dynamic>);

  String? status;
  String? message;
  List<FinancingProgramData>? data;

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class FinancingProgramData {
  FinancingProgramData({
    this.id,
    this.name,
    this.logo,
    this.bankId,
    this.createdAt,
    this.updatedAt,
  });

  factory FinancingProgramData.fromJson(Map<String, dynamic> json) =>
      FinancingProgramData(
        id: json['id'] as int,
        name: json['name'] as String,
        logo: json['logo'] as String,
        bankId: json['bank_id'] as int,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
      );

  factory FinancingProgramData.fromRawJson(String str) =>
      FinancingProgramData.fromJson(json.decode(str) as Map<String, dynamic>);

  int? id;
  String? name;
  String? logo;
  int? bankId;
  DateTime? createdAt;
  DateTime? updatedAt;

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'bank_id': bankId,
        'created_at': createdAt!.toIso8601String(),
        'updated_at': updatedAt!.toIso8601String(),
      };
}
