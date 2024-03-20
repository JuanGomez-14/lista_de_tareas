import 'package:flutter/material.dart';

class TaskController extends ChangeNotifier {
  List<Map<String, dynamic>> tasks = [];

  void addTask(String title) {
    tasks.add({
      'title': title,
      'completed': false,
    });
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTaskCompletion(int index) {
    tasks[index]['completed'] = !tasks[index]['completed'];
    notifyListeners();
  }
}
