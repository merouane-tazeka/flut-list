import 'package:flutlist/models/tasks_list.dart';
import 'package:flutlist/models/task.dart';
import 'package:flutter/material.dart';
import 'package:flutlist/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksList>(
      create: (context) => TasksList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
