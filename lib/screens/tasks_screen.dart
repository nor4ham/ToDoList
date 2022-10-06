// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:to_do_list/screens/add_task_screan.dart';
import 'package:provider/provider.dart';
 
import '../models/task_tada.dart';
import '../widfets/tasks_list.dart';

class TasksSrceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // ignore: prefer_const_constructors
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(
                        (newTaxtTitle) {
                       /*    setState(() {
                            tasks.add(Task(name: newTaxtTitle));
                            Navigator.pop(context);
                          }); */
                        },
                      ))));
        },
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 80, 168, 239),
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.blue[100],
      body: Container(
        padding: const EdgeInsets.only(
          top: 30,
          left: 10,
          right: 10,
          bottom: 80,
        ),
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'To Do list',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  "${Provider.of<TaskData>(context).tasks.length }  tasks ",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
