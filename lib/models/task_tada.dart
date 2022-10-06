import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: "workout"), Task(name: "got to ....")];
  void addTask(String newTaskTiltle) {
    tasks.add(Task(name: newTaskTiltle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task .doneChange();
    notifyListeners(); 
  } 
   void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners(); 
  }
}
