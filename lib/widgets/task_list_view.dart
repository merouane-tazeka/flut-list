import 'package:flutter/material.dart';
import 'package:flutlist/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutlist/models/tasks_list.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksList>(
      builder: (context, taskList, child) {
        return ListView.builder(
          itemCount: taskList.taskCount,
          itemBuilder: (context, index) {
            final task = taskList.tasks[index];
            return TaskTile(
              task: task,
              checkboxCallback: (checkboxState) {
                taskList.updateTask(task);
              },
            );
          },
        );
      },
    );
  }
}
