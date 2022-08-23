// class ADModel {
//   ADModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'] as bool;
//     message = json['message'] as String;
//     data = json['data'] != null
//         ? AdData.fromJson(json['data'] as Map<String, dynamic>)
//         : null;
//   }
//   bool? status;
//   String? message;
//   AdData? data;
// }
//
// class AdData {
//   AdData.fromJson(Map<String, dynamic> json) {
//     title = json['title'] as String;
//     image = json['image'] as String;
//   }
//   String? title;
//   String? image;
// }

import 'dart:convert';

class AdModel {
  AdModel({
    this.status,
    this.message,
    this.data,
  });

  factory AdModel.fromJson(Map<String, dynamic> json) => AdModel(
        status: json['status'] as String,
        message: json['message'] as String,
        //ignore: argument_type_not_assignable, avoid_dynamic_calls
        data: List<AdData>.from(json['data'].map((x) => AdData.fromJson(x))),
      );

  factory AdModel.fromRawJson(String str) =>
      AdModel.fromJson(json.decode(str) as Map<String, dynamic>);

  String? status;
  String? message;
  List<AdData>? data;

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AdData {
  AdData({
    this.id,
    this.title,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory AdData.fromJson(Map<String, dynamic> json) => AdData(
        id: json['id'] as int,
        title: json['title'] as String,
        image: json['image'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
      );

  factory AdData.fromRawJson(String str) =>
      AdData.fromJson(json.decode(str) as Map<String, dynamic>);

  int? id;
  String? title;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
        'created_at': createdAt!.toIso8601String(),
        'updated_at': updatedAt!.toIso8601String(),
      };
}
