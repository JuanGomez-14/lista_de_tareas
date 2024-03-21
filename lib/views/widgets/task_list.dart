import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List<Map<String, dynamic>> tasks;
  final Function(int) onTaskCompleted;
  final Function(int) onTaskDeleted;
  final Function() onTaskDeletedAndRefresh;

  TaskList({
    required this.tasks,
    required this.onTaskCompleted,
    required this.onTaskDeleted,
    required this.onTaskDeletedAndRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(tasks[index]['title']),
          leading: Checkbox(
            value: tasks[index]['completed'],
            onChanged: (value) {
              onTaskCompleted(index);
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              onTaskDeleted(index);
              onTaskDeletedAndRefresh();
            },
          ),
        );
      },
    );
  }
}
