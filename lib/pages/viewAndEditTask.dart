import 'package:flutter/material.dart';
import 'package:task_manager/components/MainTheme.dart';

class ViewAndEditTask extends StatefulWidget {
  @override
  _ViewAndEditTaskState createState() => _ViewAndEditTaskState();
}

class _ViewAndEditTaskState extends State<ViewAndEditTask> {
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
              "View And Edit Task",
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
