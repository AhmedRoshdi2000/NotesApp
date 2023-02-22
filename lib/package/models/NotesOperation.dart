// ignore: file_names
// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/package/models/note.dart';

class NotesOperation extends ChangeNotifier {
  // ignore: unused_field, deprecated_member_use
  final List<Note> _notes = <Note>[];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    AddNewNotes('First Title', 'First Description ');
  }

  // ignore: non_constant_identifier_names
  void AddNewNotes(String title, String description) {
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }

  void DeleteNotes(String title, String description) {
    Note note = Note(title, description);

    for (int i = 0; i < _notes.length; i++) {
      if (_notes[i] == note) {
        _notes.removeAt(i);

        notifyListeners();
      }
    }
  }
}
