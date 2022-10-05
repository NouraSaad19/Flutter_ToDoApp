import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/widgets/task.dart';

class Tasks extends StatefulWidget {
  const Tasks({
    Key? key,
  }) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  List<TaskModel> tasks = [
    TaskModel(taskName: "solve HW", isDone: true),
    TaskModel(taskName: "go to shopping", isDone: false),
    TaskModel(taskName: "learn flutter", isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    //ListView.builder help me to bulid infinty list from the task
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Task(
            taskName: tasks[index].taskName,
            isCheck: tasks[index].isDone,
            ChekboxChange: (newValue) {
              setState(() {
                tasks[index].doneChange();
              });
            });
      },
    );
    //   // ignore: prefer_const_literals_to_create_immutables
    //   children: [
    //     Task(taskName: tasks[0].taskName, isCheck: tasks[0].isDone),
    //     Task(taskName: tasks[1].taskName, isCheck: tasks[1].isDone),
    //     Task(taskName: tasks[2].taskName, isCheck: tasks[2].isDone),
    //   ],
    // );
  }
}
