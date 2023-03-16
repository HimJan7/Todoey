import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTile();
}

class _TaskTile extends State<TaskTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCallback: (bool? newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?)? toggleCallback;
  TaskCheckbox({this.checkboxState, this.toggleCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCallback,
    );
  }
}
