import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/models/tasks_data.dart';
import 'models/notes_data.dart';
import 'screens/notes_screens/notes_screen.dart';
import 'screens/tasks_screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => TasksData()),
        ChangeNotifierProvider(create: (BuildContext context) => NotesData()),
      ],
      child: const MaterialApp(
        home: Scaffold(body: MyHomePage()),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _curentIndex = 0;

  final tabs = [
    const TasksScreen(),
    const NotesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_curentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'To-Do',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt),
            label: 'Notes',
            backgroundColor: Colors.orangeAccent,
          ),
        ],
        onTap: (index) {
          setState(() => _curentIndex = index);
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
