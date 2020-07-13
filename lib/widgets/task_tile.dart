import 'package:flutter/material.dart';
import 'package:flutlist/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkboxCallback;

  TaskTile({this.task, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(task.name, style: TextStyle(decoration: task.isDone ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        checkColor: Colors.black87,
        activeColor: Colors.tealAccent,
        value: task.isDone,
        onChanged: checkboxCallback,
      ),
    );
  }
}
