// To parse this JSON data, do
//
//     final authRequestModel = authRequestModelFromJson(jsonString);

import 'dart:convert';

AuthRequestModel authRequestModelFromJson(String str) => AuthRequestModel.fromJson(json.decode(str));

String authRequestModelToJson(AuthRequestModel data) => json.encode(data.toJson());

class AuthRequestModel {
  String email;
  String senha;

  AuthRequestModel({required this.email, required this.senha});

  factory AuthRequestModel.fromJson(Map<String, dynamic> json) => AuthRequestModel(email: json["email"], senha: json["senha"]);

  Map<String, dynamic> toJson() => {"email": email, "senha": senha};
}
