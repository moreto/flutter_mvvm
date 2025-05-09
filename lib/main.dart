import 'package:flutter/material.dart';

import 'ui/note/note_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Note App', theme: ThemeData(primarySwatch: Colors.blue), home: NoteListView());
  }
}
