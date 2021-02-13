import 'package:flutter/material.dart';
import 'package:task_manager/components/MainTheme.dart';

class LoginAndRegister extends StatefulWidget {
  @override
  _LoginAndRegisterState createState() => _LoginAndRegisterState();
}

class _LoginAndRegisterState extends State<LoginAndRegister> {
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
              "Login And Register Page",
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
