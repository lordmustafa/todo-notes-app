import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    required this.taskTitle,
    required this.checkBoxCallback,
    required this.isChecked,
    Key? key,
    required this.longPressCallback,
  }) : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkBoxCallback;
  final void Function()? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.redAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
