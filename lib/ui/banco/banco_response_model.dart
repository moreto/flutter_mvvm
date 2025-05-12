// To parse this JSON data, do
//
//     final bancoResponseModel = bancoResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_mvvm/ui/banco/banco_model.dart';

BancoResponseModel bancoResponseModelFromJson(String str) => BancoResponseModel.fromJson(json.decode(str));

String bancoResponseModelToJson(BancoResponseModel data) => json.encode(data.toJson());

class BancoResponseModel {
  bool valid;
  int rowCount;
  List<BancoModel> data;

  BancoResponseModel({required this.valid, required this.rowCount, required this.data});

  factory BancoResponseModel.fromJson(Map<String, dynamic> json) =>
      BancoResponseModel(valid: json["valid"], rowCount: json["rowCount"], data: List<BancoModel>.from(json["data"].map((x) => BancoModel.fromJson(x))));

  Map<String, dynamic> toJson() => {"valid": valid, "rowCount": rowCount, "data": List<dynamic>.from(data.map((x) => x.toJson()))};
}
