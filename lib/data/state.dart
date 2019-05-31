import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class AppState extends ChangeNotifier {
  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  void add(Task value) {
    _tasks.add(value);
    notifyListeners();
  }

  void edit(int index, Task value) {
    _tasks[index] = value;
    notifyListeners();
  }

  void delete(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void reset() {
    _tasks.clear();
    notifyListeners();
  }
}

class Task {
  Task({
    @required this.name,
  });
  String name;
}
