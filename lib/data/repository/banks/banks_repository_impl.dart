import 'package:flutter_mvvm/data/provider/provider_http.dart';
import 'package:flutter_mvvm/data/repository/banks/banks_repository.dart';
import 'package:flutter_mvvm/data/service/service.dart';

import '../../../commons/enum.dart';

interface class BanksRepositoryImpl implements BanksRepository {
  @override
  Future<List<dynamic>> bankList() async {
    try {
      final result = ProviderHttp.of(Service.banksBApi).requestExternal(verb: Verb.get);
      return result;
    } finally {
      // notifyListeners();
    }
  }
}
