import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/commons/log.dart';
import 'package:flutter_mvvm/ui/banco/banco_list_viewmodel.dart';
import 'package:flutter_mvvm/ui/banco/banco_model.dart';

class BancoListView extends StatelessWidget {
  final BancoListViewModel viewModel = BancoListViewModel();

  BancoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bancos')),
      body: BlocBuilder<BancoListViewModel, List<BancoModel>>(
        bloc: viewModel,
        builder: (context, bancos) {
          return ListView.builder(
            itemCount: bancos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(bancos[index].bancNome),
                subtitle: Text(bancos[index].bancId.toString()),
                onTap: () {
                  Log.print('onTap: ${bancos[index].bancNome}');
                  // _editNote(context, notes[index], index);
                },
              );
            },
          );
        },
      ),
    );
  }
}
