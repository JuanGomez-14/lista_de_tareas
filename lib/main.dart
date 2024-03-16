import 'package:flutter/material.dart';
import 'package:lista_de_tareas/views/widgets/FormFields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tareas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Tareas'),
        ),
        body: Center(
          child: FormFieldsWidget(), // Aquí es donde agregas tu widget
        ),
      ),
    );
  }
}
