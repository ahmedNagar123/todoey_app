import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/component/TaskData.dart';
import 'package:todoey_flutter/widget/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.task[index];
          return TasksTile(
            longPress: () {
              taskData.removeData(index);
            },
            title: task.name,
            toggle: (checked) {
              taskData.updateUI(task);
            },
            isChecked: task.isCheck,
          );
        },
        itemCount: taskData.countList,
      );
    });
  }
}
