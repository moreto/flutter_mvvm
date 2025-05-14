import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/commons/log.dart';
import 'package:flutter_mvvm/data/models/banco/banco_model.dart';
import 'package:flutter_mvvm/ui/banco/banco_list_viewmodel.dart';

class BancoListView extends StatelessWidget {
  final BancoListViewModel viewModel = BancoListViewModel();

  BancoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bancos')),
      body: BlocBuilder<BancoListViewModel, List<BancoModel>>(
        bloc: viewModel,
        builder: (context, state) {
          if (state.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state[index].bancNome),
                subtitle: Text(state[index].bancId.toString()),
                onTap: () {
                  Log.print('onTap: ${state[index].bancNome}');
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
