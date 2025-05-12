import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../commons/enum.dart';
import '../../commons/log.dart';
import '../service/service.dart';
import '../service/service_exception.dart';
import '../service/service_exception_model.dart';
import 'header.dart';

class ProviderHttp {
  final Dio _dio = Dio();
  final CancelToken _cancelToken = CancelToken();
  final Map<String, dynamic> bytes = {};
  final Service _service;
  late Map<String, String>? _header;

  Response _response = Response(requestOptions: RequestOptions(), statusCode: 500, data: {'status': 500, 'message': 'erroGenerico'});
  String _url = '';

  ProviderHttp.of(this._service) {
    _header = _service.requireAuth ? Header.buildHeadersLoggedUser() : Header.buildHeaders();
    _url = _service.des + _service.endpoint;
    if (kProfileMode) {
      _url = _service.hm + _service.endpoint;
    } else if (kReleaseMode) {
      _url = _service.prd + _service.endpoint;
    }
  }

  Future<Map<String, dynamic>> request({required Verb verb, dynamic pathParam, dynamic queryParam, Map? body, int timeout = 30}) async {
    var stopWatch = Stopwatch();
    stopWatch.start();

    final options = Options(
      method: verb.name,
      headers: _header,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      followRedirects: false,
      sendTimeout: Duration(seconds: timeout),
      receiveDataWhenStatusError: true,
      receiveTimeout: const Duration(minutes: 1),
    );

    pathParam = pathParam != null ? '/$pathParam' : '';
    queryParam = queryParam != null ? '?$queryParam' : '';

    Uri uri = Uri.parse("$_url$pathParam$queryParam");

    try {
      switch (verb) {
        case Verb.get:
          _response = await _dio.getUri(uri, cancelToken: _cancelToken, options: options, onReceiveProgress: (count, total) => _receiveProgress(count, total));
          break;
        case Verb.post:
          _response = await _dio.postUri(
            uri,
            cancelToken: _cancelToken,
            options: options,
            data: body != null ? _nonNull(body) : null,
            onReceiveProgress: (count, total) => _receiveProgress(count, total),
            onSendProgress: (count, total) => _sendProgress(count, total),
          );
          break;
        case Verb.delete:
          _response = await _dio.deleteUri(uri, cancelToken: _cancelToken, options: options);
          break;
        case Verb.put:
          _response = await _dio.putUri(
            uri,
            options: options,
            cancelToken: _cancelToken,
            data: _nonNull(body!),
            onReceiveProgress: (count, total) => _receiveProgress(count, total),
            onSendProgress: (count, total) => _sendProgress(count, total),
          );
          break;
      }
      return _response.data;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return {};
      }
      _response = e.response ?? _response;

      ServiceExceptionModel responseModel = ServiceExceptionModel.fromJson(json.decode(_response.toString()));

      throw ServiceException(code: _response.statusCode, exception: e, message: responseModel.message, debugMessage: _response.data);
    } finally {
      int status = _response.statusCode ?? 500;
      var resp = _response.data;

      stopWatch.stop();
      var elapsedSeconds = stopWatch.elapsed.inSeconds;
      var elapsedMilliseconds = stopWatch.elapsed.inMilliseconds;

      Log.print('${_service.endpoint}, s: $elapsedSeconds, ms: $elapsedMilliseconds', titulo: 'Provider ${verb.name.toUpperCase()} $status');
      if (body != null) Log.printJson(body, titulo: 'Provider Body');
      if (pathParam != null) Log.print(pathParam.toString(), titulo: 'Provider Param');
    }
  }

  _nonNull(Map body) {
    body.removeWhere((key, value) => value == null || value == '');
    return body;
  }

  _receiveProgress(count, total) async {
    bytes.addAll({
      'download': {'count': count, 'total': total},
    });
  }

  _sendProgress(count, total) async {
    bytes.addAll({
      'upload': {'count': count, 'total': total},
    });
  }
}
