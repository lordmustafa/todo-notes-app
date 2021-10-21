import 'package:flutter/material.dart';

import 'package:todos_app/screens/notes_screens/add_note_screen.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    required this.noteTitle,
    required this.notePublished,
    Key? key,
    required this.removeCallback,
  }) : super(key: key);

  final String noteTitle;
  final DateTime notePublished;
  final void Function()? removeCallback;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          noteTitle,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(notePublished.toIso8601String().split('T')[0]),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline_rounded),
          onPressed: removeCallback,
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const AddNoteScreen()));
        },
      ),
    );
  }
}
