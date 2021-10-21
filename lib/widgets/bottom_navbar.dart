// import 'package:flutter/material.dart';
// import 'package:todos_app/screens/notes_screen.dart';
// import 'package:todos_app/screens/tasks_screen.dart';

// class BottomNavbar extends StatefulWidget {
//   const BottomNavbar({Key? key}) : super(key: key);

//   @override
//   _BottomNavbarState createState() => _BottomNavbarState();
// }

// class _BottomNavbarState extends State<BottomNavbar> {
//   int _curentIndex = 0;

//   final tabs = [
//     const TasksScreen(),
//     const NotesScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: _curentIndex,
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.list),
//           label: 'To-Do',
//           backgroundColor: Colors.redAccent,
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.note_alt),
//           label: 'Notes',
//           backgroundColor: Colors.orangeAccent,
//         ),
//       ],
//       onTap: (index) {
//         setState(() => _curentIndex = index);
//       },
//       type: BottomNavigationBarType.shifting,
//     );
//   }
// }
