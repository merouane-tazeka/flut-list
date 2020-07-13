import 'package:flutter/material.dart';
import 'package:flutlist/widgets/task_tile.dart';
import 'package:flutlist/models/task.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          task: tasks[index],
//          checkboxCallback: (_) {
//            setState(() {
//              tasks[index].toggleTask();
//            });
//          },
        );
      },
    );
  }
}
