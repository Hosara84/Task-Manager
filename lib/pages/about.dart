import 'package:flutter/material.dart';
import 'package:task_manager/components/MainTheme.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                  "About Page",
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
