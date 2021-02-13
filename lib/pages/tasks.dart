import 'package:flutter/material.dart';
import 'package:task_manager/components/MainTheme.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  MainTheme mainTheme = new MainTheme();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Tasks",
              style: TextStyle(
                  color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}
