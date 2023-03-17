import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/listForProvider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<taskList>(
      builder: (context, newTaskList, child) => ListView.builder(
          itemCount: newTaskList.getLength,
          itemBuilder: (context, index) {
            return TaskTile(
              name: newTaskList.getName(index),
              isChecked: newTaskList.getState(index),
              taskCallback: (newValue) {
                context.read<taskList>().toggleDone(index);
              },
              index: index,
            );
          }),
    );
  }
}
