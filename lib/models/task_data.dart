import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task_model.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _list = [
    Task(name: 'Learn flutter', isDone: false),
    Task(name: 'Learn flutter1', isDone: true),
    Task(name: 'Learn flutter2', isDone: false),
    Task(name: 'Learn flutter3', isDone: true),
  ];

  UnmodifiableListView<Task> get list {
    return UnmodifiableListView(_list);
  }

  void addData({required String taskName}) {
    Task task = Task(name: taskName);
    _list.add(task);
    notifyListeners();
  }

  void updateData({required Task task}) {
    task.toggleDone();
    notifyListeners();
  }

  void removeData({required Task task}) {
    _list.remove(task);
    notifyListeners();
  }

  int get taskCount {
    return _list.length;
  }
}
