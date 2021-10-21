import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/models/notes_data.dart';
import 'package:todos_app/widgets/notes_widgets/notes_list.dart';
import 'add_note_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Colors.orangeAccent,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddNoteScreen()),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 30, left: 30, right: 30),
              child: Column(
                children: [
                  const CircleAvatar(
                    child: Icon(
                      Icons.note_alt,
                      size: 30,
                      color: Colors.orangeAccent,
                    ),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Notes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('${context.read<NotesData>().noteCount} Note',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const NotesList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
