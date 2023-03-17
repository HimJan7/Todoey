import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class taskList extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk', isDone: false),
    Task(name: 'Buy Eggs', isDone: false),
    Task(name: 'Buy Bread', isDone: false),
  ];

  int get getLength {
    return _tasks.length;
  }

  String getName(int index) {
    return _tasks[index].name;
  }

  bool? getState(int index) {
    return _tasks[index].isDone;
  }

  void updateList(Task newtask) {
    _tasks.add(newtask);
    notifyListeners();
  }

  void toggleDone(int index) {
    _tasks[index].isDone = !(_tasks[index].isDone!);
    notifyListeners();
  }
}
