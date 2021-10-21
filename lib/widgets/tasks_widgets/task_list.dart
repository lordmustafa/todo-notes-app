import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_app/models/tasks_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (BuildContext context, tasksData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = tasksData.extasks[index];
            return TaskTile(
              taskTitle: task.title,
              isChecked: task.isDone,
              checkBoxCallback: (checkBoxState) {
                tasksData.updateTask(task);
              },
              longPressCallback: () {
                tasksData.removeTask(task);
              },
            );
          },
          itemCount: tasksData.taskCount,
        );
      },
    );
  }
}
