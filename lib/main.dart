import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/listForProvider.dart';
import 'package:todoey/models/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<taskList>(
      create: (_) => taskList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
