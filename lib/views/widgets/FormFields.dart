import 'package:flutter/material.dart';

class FormFieldsWidget extends StatefulWidget {
  FormFieldsWidget({
    super.key,
  });

  @override
  State<FormFieldsWidget> createState() => _FormFieldsWidgetState();
}

class _FormFieldsWidgetState extends State<FormFieldsWidget> {
  Map<String, dynamic> values = {"allow": false};

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CheckboxListTile(
          title: Text('Tarea'),
          value: values['allow'],
          onChanged: (newValue) {
            values['allow'] = newValue;
            setState(() {});
          },
        )
      ],
    );
  }
}
