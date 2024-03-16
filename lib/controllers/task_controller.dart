class TaskController {
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
