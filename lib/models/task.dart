class TaskModel {
  final String taskName;
  bool isDone;

  TaskModel({required this.taskName, required this.isDone});

  void doneChange() {
    isDone = !isDone;
  }
}
