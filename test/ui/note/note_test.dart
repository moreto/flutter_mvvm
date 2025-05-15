// lib/ui/note/note_viewmodel_test.dart
import 'package:flutter_mvvm/data/models/note/note_model.dart';
import 'package:flutter_mvvm/ui/note/note_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NoteViewModel', () {
    late NoteViewModel viewModel;

    setUp(() {
      viewModel = NoteViewModel();
    });

    test('addNote adds a note to the state', () {
      final note = Note(title: 'Test Note', content: 'This is a test note');
      viewModel.addNote(note);

      expect(viewModel.state.length, 1);
      expect(viewModel.state[0], note);
    });

    test('updateNote updates a note at the specified index', () {
      final note1 = Note(title: 'Note 1', content: 'Content 1');
      final note2 = Note(title: 'Updated Note', content: 'Updated Content');
      viewModel.addNote(note1);

      viewModel.updateNote(0, note2);

      expect(viewModel.state.length, 1);
      expect(viewModel.state[0], note2);
    });

    test('deleteNote removes a note at the specified index', () {
      final note1 = Note(title: 'Note 1', content: 'Content 1');
      final note2 = Note(title: 'Note 2', content: 'Content 2');
      viewModel.addNote(note1);
      viewModel.addNote(note2);

      viewModel.deleteNote(0);

      expect(viewModel.state.length, 1);
      expect(viewModel.state[0], note2);
    });
  });
}
