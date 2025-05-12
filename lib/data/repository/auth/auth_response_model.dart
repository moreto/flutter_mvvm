import 'dart:convert';

import '../usuario/usuario_model.dart';

AuthResponseModel authResponseModelFromJson(String str) => AuthResponseModel.fromJson(json.decode(str));

String authResponseModelToJson(AuthResponseModel data) => json.encode(data.toJson());

class AuthResponseModel {
  bool valid;
  int rowCount;
  Data data;

  AuthResponseModel({required this.valid, required this.rowCount, required this.data});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(valid: json["valid"], rowCount: json["rowCount"], data: Data.fromJson(json["data"]));

  Map<String, dynamic> toJson() => {"valid": valid, "rowCount": rowCount, "data": data.toJson()};
}

class Data {
  String accessToken;
  UsuarioModel usuario;

  Data({required this.accessToken, required this.usuario});

  factory Data.fromJson(Map<String, dynamic> json) => Data(accessToken: json["accessToken"], usuario: UsuarioModel.fromJson(json["usuario"]));

  Map<String, dynamic> toJson() => {"accessToken": accessToken, "usuario": usuario.toJson()};
}
