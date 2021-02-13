import 'package:flutter/material.dart';
import 'package:task_manager/pages/home.dart';
import 'package:task_manager/pages/splash.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Splash(),
        "home" : (context) => Home()
      },
    )
  );
}