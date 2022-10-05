// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import '../models/task_data.dart';
import '../widgets/tasks.dart';
import 'package:provider/provider.dart';
import '../screens/add_task.dart';

class ToDoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 58, 106),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 39, 126, 203),
        onPressed: () {
          showModalBottomSheet(
              // isScrollControlled: true,

              //Popup in fultter
              context: context,
              builder: (context) => AddTask());
        },
        child: Icon(Icons.add_task),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 7, top: 80, right: 7, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.playlist_add_check,
                  size: 45,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ToDoApp",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Tasks(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
