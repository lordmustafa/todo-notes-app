import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'task.dart';

class TasksData extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get extasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount => _tasks.length;

  void addTask(String newTaskTitle) {
    final task = Task(title: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
