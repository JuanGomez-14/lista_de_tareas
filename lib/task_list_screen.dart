import 'package:flutter/material.dart';
import 'package:lista_de_tareas/controllers/task_controller.dart';
import 'package:lista_de_tareas/views/widgets/task_list.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  TaskController _taskController = TaskController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: TaskList(
        tasks: _taskController.tasks,
        onTaskCompleted: (index) {
          _taskController.toggleTaskCompletion(index);
          setState(() {});
        },
        onTaskDeleted: (index) {
          _taskController.removeTask(index);
          setState(() {});
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTaskDialog,
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTaskTitle = '';

        return AlertDialog(
          title: Text('Agregar Nueva Tarea'),
          content: TextField(
            onChanged: (value) {
              newTaskTitle = value;
            },
            decoration: InputDecoration(
              hintText: 'Ingrese el nombre de la tarea',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                _taskController.addTask(newTaskTitle);
                Navigator.of(context).pop();
                setState(() {});
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
