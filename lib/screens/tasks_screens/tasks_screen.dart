import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/models/tasks_data.dart';
import 'add_task_screen.dart';
import '../../widgets/tasks_widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Colors.redAccent,
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => const AddTaskScreen(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.redAccent,
                    ),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "To-do",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('${Provider.of<TasksData>(context).taskCount} Tasks',
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
                child: const TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
