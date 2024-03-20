import 'package:flutter/material.dart';
import 'package:lista_de_tareas/task_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tareas',
      home: TaskListScreen(),
    );
  }
}
