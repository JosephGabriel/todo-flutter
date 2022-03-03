import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/task_tile.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.list.length,
        itemBuilder: (context, index) {
          return TaskTitle(
            taskTitle: taskData.list[index].name,
            isChecked: taskData.list[index].isDone,
            onLongPress: () {
              taskData.removeData(task: taskData.list[index]);
            },
            onChange: (val) {
              taskData.updateData(task: taskData.list[index]);
            },
          );
        },
      );
    });
  }
}
