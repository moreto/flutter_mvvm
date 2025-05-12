// To parse this JSON data, do
//
//     final usuarioModel = usuarioModelFromJson(jsonString);

import 'dart:convert';

UsuarioModel usuarioModelFromJson(String str) => UsuarioModel.fromJson(json.decode(str));

String usuarioModelToJson(UsuarioModel data) => json.encode(data.toJson());

class UsuarioModel {
  int usuaId;
  String usuaEmail;
  bool usuaStatus;

  UsuarioModel({required this.usuaId, required this.usuaEmail, required this.usuaStatus});

  factory UsuarioModel.fromJson(Map<String, dynamic> json) =>
      UsuarioModel(usuaId: json["usuaId"], usuaEmail: json["usuaEmail"], usuaStatus: json["usuaStatus"]);

  Map<String, dynamic> toJson() => {"usuaId": usuaId, "usuaEmail": usuaEmail, "usuaStatus": usuaStatus};
}
