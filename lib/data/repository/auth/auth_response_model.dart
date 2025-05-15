// To parse this JSON data, do
//
//     final authResponseModel = authResponseModelFromJson(jsonString);

import 'dart:convert';

AuthResponseModel authResponseModelFromJson(String str) => AuthResponseModel.fromJson(json.decode(str));

String authResponseModelToJson(AuthResponseModel data) => json.encode(data.toJson());

class AuthResponseModel {
  String accessToken;
  Usuario usuario;

  AuthResponseModel({required this.accessToken, required this.usuario});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(accessToken: json["accessToken"], usuario: Usuario.fromJson(json["usuario"]));

  Map<String, dynamic> toJson() => {"accessToken": accessToken, "usuario": usuario.toJson()};
}

class Usuario {
  int usuaId;
  String usuaEmail;
  bool usuaStatus;

  Usuario({required this.usuaId, required this.usuaEmail, required this.usuaStatus});

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(usuaId: json["usuaId"], usuaEmail: json["usuaEmail"], usuaStatus: json["usuaStatus"]);

  Map<String, dynamic> toJson() => {"usuaId": usuaId, "usuaEmail": usuaEmail, "usuaStatus": usuaStatus};
}
