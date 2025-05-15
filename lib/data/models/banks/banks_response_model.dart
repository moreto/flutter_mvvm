// To parse this JSON data, do
//
//     final banksResponseModel = banksResponseModelFromJson(jsonString);

import 'dart:convert';

List<BanksResponseModel> banksResponseModelFromJson(String str) => List<BanksResponseModel>.from(json.decode(str).map((x) => BanksResponseModel.fromJson(x)));

String banksResponseModelToJson(List<BanksResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BanksResponseModel {
  String ispb;
  String? name;
  int? code;
  String? fullName;

  BanksResponseModel({required this.ispb, this.name, required this.code, this.fullName});

  factory BanksResponseModel.fromJson(Map<String, dynamic> json) =>
      BanksResponseModel(ispb: json["ispb"], name: json["name"], code: json["code"], fullName: json["fullName"]);

  Map<String, dynamic> toJson() => {"ispb": ispb, "name": name, "code": code, "fullName": fullName};
}
