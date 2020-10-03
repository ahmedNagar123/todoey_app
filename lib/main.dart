import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/component/TaskData.dart';

import 'screens/tasks_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
