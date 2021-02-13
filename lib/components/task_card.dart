import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/extensions/HexColor.dart';
import 'package:task_manager/model/Task.dart';

class TaskCard extends StatefulWidget {
  final Task task;
  final Function delete;
  TaskCard({ this.task, this.delete});

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: HexColor.fromHex("#1E1E1E"),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: Colors.purple.withOpacity(0.4),
            width: 1,
            style: BorderStyle.solid
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Theme(
        data: ThemeData(
          unselectedWidgetColor: Colors.white,
        ),
        child: CheckboxListTile(
          dense: true,
          title: Text(
            widget.task.name,
            style: widget.task.state ? TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.purple,
                decorationThickness: 3,
                fontSize: 15
            ) : TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15
            ),
          ),
          value: widget.task.state,
          onChanged: (bool value){
            setState(() {
              if(widget.task.state){
                widget.task.state = false;
              }else{
                widget.task.state = true;
              }
            });
          },
          checkColor: Colors.purple,
          activeColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          secondary: Wrap(
            spacing: 10,
            children: <Widget>[
              Container(
                width: 20,
                child: IconButton(
                  onPressed: (){
                    return showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text("Ar you sure ?"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          actions: [
                            FlatButton(
                              child: Text(
                                "yes",
                              ),
                              onPressed: (){
                                widget.delete();
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: Text(
                                "no",
                              ),
                              onPressed: (){
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                        barrierDismissible: true
                    );
                  },
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(0),
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ),
              Container(
                width: 20,
                child: IconButton(
                  onPressed: (){
                    return showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text("Are you sure ?"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          actions: [
                            FlatButton(
                              child: Text(
                                "yes",
                              ),
                              onPressed: (){
                                widget.delete();
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: Text(
                                "no",
                              ),
                              onPressed: (){
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                        barrierDismissible: true
                    );
                  },
                  icon: Icon(
                    Icons.delete_outlined,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(0),
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

