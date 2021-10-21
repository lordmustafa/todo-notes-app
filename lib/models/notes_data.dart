import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'note.dart';

class NotesData extends ChangeNotifier {
  final List<Note> _notes = [];

  UnmodifiableListView<Note> get exNotes {
    return UnmodifiableListView(_notes);
  }

  int get noteCount => _notes.length;

  //  Database db;

  // Future createDB() async {
  //   db = await openDatabase(
  //     'notes.db',
  //     version: 1,
  //     onCreate: (db, version) {
  //       db.execute(
  //           'CREATE TABLE Notes(stirng newNoteTitle, string newNoteText, string date, String state)');
  //     },
  //     onOpen: (database) {
  //       getData(database);
  //     },
  //   );
  // }

  Future addNote(
      {required String newNoteTitle, required String newNoteText}) async {
    final note = Note(
      title: newNoteTitle,
      text: newNoteText,
      published: DateTime.now(),
    );
    _notes.add(note);
    notifyListeners();
  }

  void getData(Database database) {
    database.rawQuery('SELECT * FROM tasks');
    notifyListeners();
  }

  void removeNote(Note note) {
    _notes.remove(note);
    notifyListeners();
  }
}
