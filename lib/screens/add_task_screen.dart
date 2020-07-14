import 'package:flutlist/models/tasks_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(left: 30, top: 20, right: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(fontSize: 30, color: Colors.teal),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 10),
            FlatButton(
              color: Colors.tealAccent,
              onPressed: () {
                Provider.of<TasksList>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Container(
                child: Text('Add', style: TextStyle(color: Colors.black87)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
