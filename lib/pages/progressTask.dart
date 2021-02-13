import 'package:flutter/material.dart';
import 'package:task_manager/model/StepTask.dart';

class ProgressTask extends StatefulWidget {
  @override
  _ProgressTaskState createState() => _ProgressTaskState();
}

class _ProgressTaskState extends State<ProgressTask> {
  List<StepTask> tasks = [
    StepTask("task1", "This is first task description", false),
    StepTask("task2", "This is two task description", false),
    StepTask("task3", "This is tree task description", false),
    StepTask("task4", "This is four task description", false)
  ];
  int currentStep = 0;
  bool complete = false;

  next() {
    setState(() {
      tasks[currentStep].passed = true;
    });
    currentStep + 1 != tasks.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    setState(() {
      tasks[currentStep].passed = false;
    });
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        steps: tasks.asMap().map((key, e) => MapEntry(key, Step(
            isActive: (){
              if (e.passed){
                return true;
              }else{
                if(key == currentStep){
                  return true;
                }else{
                  return false;
                }
              }
            }(),
            title: Text(
                e.name
            ),
            content: Text(
                e.description
            )
        ))).values.toList(),
        currentStep: currentStep,
        onStepContinue: next,
        onStepCancel: cancel,
      )
    );
  }
}
