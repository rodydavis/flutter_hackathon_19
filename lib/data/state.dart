import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class AppState extends ChangeNotifier {
  final _storage = LocalStorage('state');
  List<Task> _tasks = [];

  void init() async {
    await _storage.ready;
    _load();
  }

  List<Task> get tasks => _tasks;

  void add(Task value) {
    _tasks.add(value);
    notifyListeners();
    _save();
  }

  void edit(int index, Task value) {
    _tasks[index] = value;
    notifyListeners();
    _save();
  }

  void delete(int index) {
    _tasks.removeAt(index);
    notifyListeners();
    _save();
  }

  void reset() {
    _tasks.clear();
    notifyListeners();
    _save();
  }

  void _load() {
    final _data = _storage.getItem('tasks');
    if (_data != null) {
      _tasks = List.from(_data).map((i) => Task.fromJson(i)).toList();
      notifyListeners();
    }
  }

  void _save() async {
    _storage.setItem('tasks', _tasks.map((i) => i.toJson()).toList());
  }
}

class Task {
  Task({
    @required this.name,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'],
    );
  }

  String name;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}
