import 'package:flutter/material.dart';
import 'package:flutter_mvvm/routing/router.dart';

import 'ui/core/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Note App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // home: StartView(),
      routerConfig: router(),
      //  localizationsDelegates: [GlobalWidgetsLocalizations.delegate, GlobalMaterialLocalizations.delegate, AppLocalizationDelegate()],
    );
  }
}
