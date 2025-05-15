import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/data/models/feriados/feriados_response_model.dart';

import '../../data/repository/feriados/feriados_repository_impl.dart';

class FeriadosViewModel extends Cubit<List<FeriadosResponseModel>> {
  FeriadosViewModel() : super([]) {
    load();
  }

  Future<void> load() async {
    FeriadosRepositoryImpl repository = FeriadosRepositoryImpl();
    final json = await repository.feriadosList('2025');

    // BanksResponseModel response = BanksResponseModel.fromJson(json);
    List<FeriadosResponseModel> list = (json).map((item) => FeriadosResponseModel.fromJson(item as Map<String, dynamic>)).toList();

    state.addAll(list);
    emit(List.from(state));
  }

  Future<void> list() async {
    emit(List.from(state));
  }

  convertDate(String date) {
    DateTime parsedDate = DateTime.parse(date);
    String formattedDate = "${parsedDate.day.toString().padLeft(2, '0')}/${parsedDate.month.toString().padLeft(2, '0')}/${parsedDate.year}";
    return formattedDate;
  }
}
