import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/widgets/task.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> tasks = [
    TaskModel(taskName: "solve HW"),
    TaskModel(taskName: "go to shopping"),
    TaskModel(taskName: "learn flutter"),
  ];

  void addTask(String newNameTask) {
    tasks.add(TaskModel(taskName: newNameTask));
    notifyListeners();
  }

  void cheakTask(TaskModel task) {
    task.doneChange();
    notifyListeners();
  }

  void delete(TaskModel task) {
    tasks.remove(task);
    notifyListeners();
  }
}
