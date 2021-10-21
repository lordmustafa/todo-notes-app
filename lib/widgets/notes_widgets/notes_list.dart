import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/models/notes_data.dart';
import 'notes_tile.dart';

class NotesList extends StatelessWidget {
  const NotesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NotesData>(
      builder: (BuildContext context, notesData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final note = notesData.exNotes[index];
            return NoteTile(
              noteTitle: note.title,
              notePublished: DateTime.now(),
              removeCallback: () => notesData.removeNote(note),
            );
          },
          itemCount: notesData.noteCount,
        );
      },
    );
  }
}
