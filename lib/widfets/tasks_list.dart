// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_tada.dart';
import 'task_list.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isCheked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxChange: (bool? newvalue) {
            Provider.of<TaskData>(context,listen: false)
                .updateTask(Provider.of<TaskData>(context,listen: false).tasks[index]); 
          },
          lisrTileDelete:(){
             Provider.of<TaskData>(context,listen: false)
                .deleteTask(Provider.of<TaskData>(context,listen: false).tasks[index]); 
          },
            
        );
      },
    );
  }
}
