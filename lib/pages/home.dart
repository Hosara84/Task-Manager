import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/components/MainTheme.dart';
import 'package:task_manager/layout/layoutMain.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MainTheme mainTheme = new MainTheme();
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      "Task Manager",
      "home",
      [
        Expanded(
          child: Center(
            child: Text(
              "Sorry, you don't have any list!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
        )
      ],
      FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.purple[400],

      ),
    );
  }
}
