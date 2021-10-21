import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newTaskTitle = TextEditingController();

    return Container(
      color: const Color(0xff757575),
      child: Container(
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
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.redAccent),
              child: FlatButton(
                onPressed: () {
                  Provider.of<TasksData>(context, listen: false)
                      .addTask(newTaskTitle.text);
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add Task',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.redAccent,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.always,
                cursorColor: Colors.redAccent,
                decoration: const InputDecoration(border: InputBorder.none),
                maxLines: 1,
                textAlign: TextAlign.center,
                autofocus: true,
                controller: newTaskTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
