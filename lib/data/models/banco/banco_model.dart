// To parse this JSON data, do
//
//     final bancoModel = bancoModelFromJson(jsonString);

import 'dart:convert';

BancoModel bancoModelFromJson(String str) => BancoModel.fromJson(json.decode(str));

String bancoModelToJson(BancoModel data) => json.encode(data.toJson());

class BancoModel {
  int bancId;
  String bancNome;
  bool bancStatus;
  int bancOrdem;
  String bancImagem;

  BancoModel({required this.bancId, required this.bancNome, required this.bancStatus, required this.bancOrdem, required this.bancImagem});

  factory BancoModel.fromJson(Map<String, dynamic> json) => BancoModel(
    bancId: json["bancId"],
    bancNome: json["bancNome"],
    bancStatus: json["bancStatus"],
    bancOrdem: json["bancOrdem"],
    bancImagem: json["bancImagem"],
  );

  Map<String, dynamic> toJson() => {"bancId": bancId, "bancNome": bancNome, "bancStatus": bancStatus, "bancOrdem": bancOrdem, "bancImagem": bancImagem};
}
