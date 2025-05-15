import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/auth/auth_response_model.dart';
import '../../../utils/result.dart';

class LoginViewModel extends Cubit<List<AuthResponseModel>> {
  LoginViewModel() : super([]);

  Future<Result<bool>> login(String email, String senha) async {
    if (email == 'mmoreto@gmail.com' && senha == '112233') {
      // AuthResponseModel response = AuthResponseModel(
      //   accessToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9",
      //   usuario: Usuario(usuaId: 1, usuaEmail: 'mmoreto@gmail.com', usuaStatus: true),
      // );

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
