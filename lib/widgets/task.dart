import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text("I will go to shopping..",
            style: TextStyle(
              decoration: isCheck ? TextDecoration.lineThrough : null,
            )),
        trailing: TaskCheckbox(isCheck, (bool? newValue) {
          setState(() {
            isCheck = newValue!;
          });
        }));
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) checkboxChange;
  TaskCheckbox(this.checkboxState, this.checkboxChange);
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkboxState, onChanged: checkboxChange);
  }
}
