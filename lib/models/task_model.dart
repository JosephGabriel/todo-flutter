class Task {
  Task({required this.name, this.isDone = false});

  late final String name;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }
}
