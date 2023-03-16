import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks = [];
  TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            name: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            taskCallback: (newValue) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
