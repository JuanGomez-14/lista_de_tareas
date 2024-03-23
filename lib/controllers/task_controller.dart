import 'package:flutter/material.dart';

class TaskController extends ChangeNotifier {
  List<Map<String, dynamic>> tasks = [];

  void addTask(String title) {
    tasks.add({
      'title': title,
      'completed': false,
    });
  }

  void removeTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    tasks[index]['completed'] = !tasks[index]['completed'];
  }
}
