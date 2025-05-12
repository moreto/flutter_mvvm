import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/data/repository/banco/banco_repository.dart';
import 'package:flutter_mvvm/ui/banco/banco_model.dart';

import 'banco_response_model.dart';

class BancoListViewModel extends Cubit<List<BancoModel>> {
  BancoListViewModel() : super([]) {
    list();
  }

  Future<void> list() async {
    BancoRepository repository = BancoRepository();
    final json = await repository.bancoList();

    BancoResponseModel response = BancoResponseModel.fromJson(json);
    List<BancoModel> list = response.data;

    state.addAll(list);
    emit(List.from(state));
  }
}
