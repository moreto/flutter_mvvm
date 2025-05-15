import 'package:flutter_mvvm/ui/auth/login/login_view.dart';
import 'package:flutter_mvvm/ui/feriados/feriados_view.dart';
import 'package:flutter_mvvm/ui/note/note_view.dart';
import 'package:flutter_mvvm/ui/start/start_view.dart';
import 'package:go_router/go_router.dart';

import '../ui/banks/banks_list_view.dart';
import 'routes.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.login,
  // debugLogDiagnostics: true,
  // redirect: _redirect,
  // refreshListenable: authRepository,
  routes: [
    GoRoute(path: Routes.login, builder: (context, state) => const LoginView()),
    GoRoute(path: Routes.start, builder: (context, state) => const StartView()),
    GoRoute(path: Routes.banks, builder: (context, state) => BancoListView()),
    GoRoute(path: Routes.feriados, builder: (context, state) => FeriadosView()),
    GoRoute(
      path: Routes.note,
      builder: (context, state) {
        //  final viewModel = SearchFormViewModel(continentRepository: context.read(), itineraryConfigRepository: context.read());
        return NoteListView();
      },
    ),
  ],
);
