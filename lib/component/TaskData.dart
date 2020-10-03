import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/component/todoey_model.dart';

class TaskData extends ChangeNotifier {
  List<TodoeyModel> _task = [
    TodoeyModel(name: 'buy coffee'),
    TodoeyModel(name: 'buy milk'),
    TodoeyModel(name: 'buy water'),
  ];

  void change(String data) {
    _task.add(TodoeyModel(name: data));
    notifyListeners();
  }

  void removeData(int index) {
    _task.removeAt(index);
    notifyListeners();
  }

  void updateUI(TodoeyModel todoeyModel) {
    todoeyModel.toggle();
    notifyListeners();
  }

  UnmodifiableListView<TodoeyModel> get task => UnmodifiableListView(_task);

  int get countList => _task.length;
}
