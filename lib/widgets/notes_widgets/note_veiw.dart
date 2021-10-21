import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:todos_app/models/notes_data.dart';

class NoteVeiw extends StatelessWidget {
  const NoteVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newNoteTitle = TextEditingController();
    final newNoteText = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        actions: [
          IconButton(
              onPressed: () {
                context.read<NotesData>().addNote(
                    newNoteTitle: newNoteTitle.text,
                    newNoteText: newNoteText.text);
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done_rounded,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.orangeAccent,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: TextField(
                cursorColor: Colors.orangeAccent,
                maxLines: 1,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Title',
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(Icons.title_sharp),
                ),
                controller: newNoteTitle,
                cursorHeight: 1.5,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.orangeAccent,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Expanded(
                  child: TextField(
                    cursorHeight: 1.5,
                    cursorColor: Colors.orangeAccent,
                    autofocus: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter your note here',
                      prefixIcon: Icon(Icons.text_fields_sharp),
                      contentPadding: EdgeInsets.all(10),
                    ),
                    controller: newNoteText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
