import 'package:flutter_mvvm/data/provider/provider_http.dart';
import 'package:flutter_mvvm/data/service/service.dart';

import '../../../commons/enum.dart';

interface class AuthRepository {
  Future<Map<String, dynamic>> login({required Map<String, dynamic> requestBody}) async {
    try {
      final result = ProviderHttp.of(Service.login).request(verb: Verb.post, body: requestBody);

      // final result = await _providerHttp.request(LoginRequest(email: email, password: password));

      // switch (result) {
      //   case Ok<LoginResponse>():
      //
      //     // Set auth status
      //     // _isAuthenticated = true;
      //     // _authToken = result.value.token;
      //     // Store in Shared preferences
      //     // return await _sharedPreferencesService.saveToken(result.value.token);
      //     return const Result.ok(true);
      //   case Error<LoginResponse>():
      //     _log.warning('Error logging in: ${result.error}');
      //     return Result.error(result.error);
      // }

      return result;
    } finally {
      // notifyListeners();
    }
  }
}
