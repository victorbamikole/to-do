import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final checkBoxCallback;
  final longPressCallback;

  TaskTile({required this.isChecked, required this.taskTitle, this.checkBoxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked, //onChanged: (bool? value) {}
        onChanged: (newValue){
          checkBoxCallback(newValue);
        },
      ),
    );
  }
}


