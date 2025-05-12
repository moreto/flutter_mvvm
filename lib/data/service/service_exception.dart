class ServiceException implements Exception {
  ServiceException({this.exception, this.message, this.code, this.debugMessage});

  Exception? exception;
  String? message;
  Map<String, dynamic>? debugMessage;
  num? code;
}
