import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/data/models/banks/banks_response_model.dart';
import 'package:flutter_mvvm/data/repository/banks/banks_repository_impl.dart';

class BancoListViewModel extends Cubit<List<BanksResponseModel>> {
  BancoListViewModel() : super([]) {
    load();
  }

  Future<void> load() async {
    BanksRepositoryImpl repository = BanksRepositoryImpl();
    final json = await repository.bankList();

    // BanksResponseModel response = BanksResponseModel.fromJson(json);
    List<BanksResponseModel> list = (json).map((item) => BanksResponseModel.fromJson(item as Map<String, dynamic>)).toList();

    state.addAll(list);
    emit(List.from(state));
  }

  Future<void> list() async {
    emit(List.from(state));
  }
}
