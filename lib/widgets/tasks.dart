import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/widgets/task.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      //ListView.builder help me to bulid infinty list from the task
      return ListView.builder(
        itemCount: Provider.of<TaskData>(context).tasks.length,
        itemBuilder: (context, index) {
          return Task(
              taskName: taskData.tasks[index].taskName,
              isCheck: taskData.tasks[index].isDone,
              ChekboxChange: (newValue) {
                taskData.cheakTask(taskData.tasks[index]);
              },
              DeleteTask: () {
                taskData.delete(taskData.tasks[index]);
              });
        },
      );
    });
  }
}
