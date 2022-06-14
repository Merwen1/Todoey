import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallBack,
  });

  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;
  final Function() longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox(
      {required this.checkboxState, required this.toggleCheckboxState});

  final bool checkboxState;
  final ValueChanged<bool?> toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
