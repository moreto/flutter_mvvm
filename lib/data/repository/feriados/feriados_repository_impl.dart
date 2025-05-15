import 'package:flutter_mvvm/data/provider/provider_http.dart';
import 'package:flutter_mvvm/data/service/service.dart';

import '../../../commons/enum.dart';
import 'feriados_repository.dart';

interface class FeriadosRepositoryImpl implements FeriadosRepository {
  @override
  Future<List<dynamic>> feriadosList(String ano) async {
    try {
      final result = ProviderHttp.of(Service.feriadosBApi).requestExternal(verb: Verb.get, pathParam: ano);
      return result;
    } finally {
      // notifyListeners();
    }
  }
}
