import 'package:flutter/material.dart';
import 'package:task_manager/components/MainTheme.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
              "Setting",
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
