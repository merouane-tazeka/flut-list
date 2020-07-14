import 'package:flutlist/models/tasks_list.dart';
import 'package:flutter/material.dart';
import 'package:flutlist/screens/add_task_screen.dart';
import 'package:flutlist/widgets/task_list_view.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
//  List<Task> newTasks = [
//    Task(name: 'Buy eggs'),
//    Task(name: 'Buy proteins'),
//    Task(name: 'Feed the dogs'),
//  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30, top: 60, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black87,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.tealAccent,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'FlutList',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  //TODO: Make Dynamic
                  '${Provider.of<TasksList>(context).taskCount} Tasks',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TaskListView(),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        backgroundColor: Colors.tealAccent,
        child: Icon(
          Icons.add,
          color: Colors.black87,
        ),
      ),
    );
  }
}
