import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String name;
  bool? isChecked;
  final void Function(bool?)? taskCallback;
  TaskTile({
    required this.name,
    required this.isChecked,
    required this.taskCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
