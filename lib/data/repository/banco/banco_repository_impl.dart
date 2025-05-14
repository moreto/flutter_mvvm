import 'package:flutter_mvvm/data/provider/provider_http.dart';
import 'package:flutter_mvvm/data/repository/banco/banco_repository.dart';
import 'package:flutter_mvvm/data/service/service.dart';

import '../../../commons/enum.dart';

interface class BancoRepositoryImpl implements BancoRepository {
  @override
  Future<Map<String, dynamic>> bancoList() async {
    try {
      final result = ProviderHttp.of(Service.bancoList).request(verb: Verb.get);
      return result;
    } finally {
      // notifyListeners();
    }
  }
}
