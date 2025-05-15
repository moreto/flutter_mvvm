import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/commons/log.dart';
import 'package:flutter_mvvm/ui/feriados/feriados_viewmodel.dart';
import 'package:intl/intl.dart';

import '../../data/models/feriados/feriados_response_model.dart';

class FeriadosView extends StatelessWidget {
  final FeriadosViewModel viewModel = FeriadosViewModel();

  FeriadosView({super.key});

  final inputFormat = DateFormat('yyyy/MM/dd');
  final outputFormat = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feriados')),
      body: BlocBuilder<FeriadosViewModel, List<FeriadosResponseModel>>(
        bloc: viewModel,
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state[index].name.toString()),
                subtitle: Text(viewModel.convertDate(state[index].date.toString())),
                trailing: Text(state[index].type.toString()),
                onTap: () {
                  Log.print('onTap: ${state[index].name}');
                  // _editNote(context, notes[index], index);
                },
              );
            },
          );
        },
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 2 - 24,
              child: ElevatedButton(
                onPressed: () {
                  viewModel.list();
                },
                child: Text('atualizar'.toUpperCase()),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
