import 'package:flutter/material.dart';
import 'package:flutlist/widgets/task_tile.dart';
import 'package:flutlist/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          task: widget.tasks[index],
          checkboxCallback: (_) {
            setState(() {
              widget.tasks[index].toggleTask();
            });
          },
        );
      },
    );
  }
}
