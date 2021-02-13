import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_manager/components/MainTheme.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  MainTheme mainTheme = new MainTheme();
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, "home");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Task Manager",
                    style: TextStyle(
                        fontFamily: mainTheme.headerFontFace,
                        fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
