import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) onChange;
  final Function() onLongPress;

  const TaskTitle(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.onChange,
      required this.onLongPress})
      : super(key: key);

  // void checkboxCallback(bool value) {
  //   setState(() {
  //     isChecked = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
            color: Colors.black54,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        onChanged: onChange,
        value: isChecked,
      ),
    );
  }
}
