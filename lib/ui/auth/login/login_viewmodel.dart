import 'package:flutter_mvvm/data/repository/auth/auth_repository.dart';
import 'package:flutter_mvvm/data/repository/auth/auth_response_model.dart';

import '../../../data/repository/auth/auth_request_model.dart';
import '../../../utils/result.dart';

class LoginViewModel {
  LoginViewModel({required AuthRepository authRepository}) : _authRepository = authRepository {}

  final AuthRepository _authRepository;

  Future<Result<bool>> _login(String email, String senha) async {
    AuthRequestModel req = AuthRequestModel(email: email, senha: senha);

    final json = await _authRepository.login(requestBody: req.toJson());

    AuthResponseModel response = AuthResponseModel.fromJson(json);

    if (response.valid) {
      return Result.ok(true);
    } else {
      return Result.error(Exception(false));
    }

    // if (result is Error<void>) {
    //   _log.warning('Login failed! ${result.error}');
    // }
    // return result;
  }
}
