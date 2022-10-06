import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheked;
  final String taskTitle;
  final Function (bool?) checkboxChange;
  final Function () lisrTileDelete;

  TaskTile(
      {required this.isCheked, required this.taskTitle,required this.checkboxChange,required this.lisrTileDelete });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
          style: TextStyle(
            decoration: isCheked ? TextDecoration.lineThrough : null,
          )),
      trailing: Checkbox(
        activeColor: Colors.blue[100],
        value: isCheked,
        onChanged:  checkboxChange,
      ),
      onLongPress: lisrTileDelete,
    );
  }
}
/* (bool?  newvalue) {
        setState(() {
          isCheked = newvalue!;
        } */
