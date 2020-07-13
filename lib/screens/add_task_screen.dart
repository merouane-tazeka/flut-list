import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            ),
            SizedBox(height: 10),
            FlatButton(
              color: Colors.tealAccent,
              onPressed: () {
                //Pressed
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
