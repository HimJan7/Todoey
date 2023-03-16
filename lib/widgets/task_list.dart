import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk', isDone: false),
    Task(name: 'Buy Eggs', isDone: false),
    Task(name: 'Buy Bread', isDone: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            name: tasks[index].name,
            isChecked: tasks[index].isDone,
            taskCallback: (newValue) {
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
