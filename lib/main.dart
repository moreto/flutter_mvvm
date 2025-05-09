import 'package:flutter/material.dart';

import 'ui/auth/login/login_view.dart';
import 'ui/core/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Note App', theme: AppTheme.lightTheme, darkTheme: AppTheme.darkTheme, home: LoginView());
  }
}
