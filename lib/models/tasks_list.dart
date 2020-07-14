import 'package:flutlist/models/task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TasksList extends ChangeNotifier {
  List<Task> _tasksList = [
    Task(name: 'Buy eggs'),
    Task(name: 'Buy proteins'),
    Task(name: 'Feed the dogs'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasksList);
  }

  void addTask(String newTaskTitle) {
    _tasksList.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  int get taskCount {
    return _tasksList.length;
  }
}
