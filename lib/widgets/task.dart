import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String taskName;
  final bool isCheck;

  final void Function(bool?) ChekboxChange;
  final void Function() DeleteTask;

  Task(
      {required this.taskName,
      required this.isCheck,
      required this.ChekboxChange,
      required this.DeleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName,
          style: TextStyle(
            decoration: isCheck ? TextDecoration.lineThrough : null,
          )),
      trailing: Checkbox(value: isCheck, onChanged: ChekboxChange),
      onLongPress: DeleteTask,
    );
  }
}
