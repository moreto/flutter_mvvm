import 'dart:convert';

ServiceExceptionModel serviceExceptionModelFromJson(String str) => ServiceExceptionModel.fromJson(json.decode(str));

String serviceExceptionModelToJson(ServiceExceptionModel data) => json.encode(data.toJson());

class ServiceExceptionModel {
  final int? status;
  final String? debugMessage;
  final String? message;
  final Data? data;

  ServiceExceptionModel({this.status, this.debugMessage, this.message, this.data});

  factory ServiceExceptionModel.fromJson(Map<String, dynamic> json) => ServiceExceptionModel(
    status: json['status'],
    debugMessage: json['debugMessage'],
    message: json['message'],
    data: json['data'] == null ? null : Data.fromJson(json['data']),
  );

  Map<String, dynamic> toJson() => {'status': status, 'debugMessage': debugMessage, 'message': message, 'data': data?.toJson()};
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}
