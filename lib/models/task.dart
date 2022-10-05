class TaskModel {
  final String taskName;
  bool isDone;

  TaskModel({required this.taskName, this.isDone = false});

  void doneChange() {
    isDone = !isDone;
  }
}
