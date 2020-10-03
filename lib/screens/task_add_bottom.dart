import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/component/TaskData.dart';

class TaskAddBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    text = value;
                  },
                  cursorColor: Colors.lightBlueAccent,
                  autofocus: true,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20),
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      text != null
                          ? Provider.of<TaskData>(context, listen: false)
                              .change(text)
                          : null;
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
