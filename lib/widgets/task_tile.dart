import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/listForProvider.dart';

class TaskTile extends StatelessWidget {
  String name;
  bool? isChecked;
  final void Function(bool?)? taskCallback;
  int index;
  TaskTile({
    required this.name,
    required this.isChecked,
    required this.taskCallback,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        context.read<taskList>().deleteElement(index);
      },
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: taskCallback,
      ),
    );
  }
}
