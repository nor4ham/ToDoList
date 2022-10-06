
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_tada.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaxtTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Add New Task ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          // ignore: prefer_const_constructors
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaxtTitle = value;
            },
          ),
          const SizedBox(height: 20), 
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newTaxtTitle!);
              Navigator.pop(context);
            },
            // ignore: sort_child_properties_last
            child: const Text(
              "Add",
            ),
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue[500 ], primary: Colors.white),
          )
        ],
      ),
    );
  }
}
