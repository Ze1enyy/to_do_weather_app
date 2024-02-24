import 'package:flutter/material.dart';
import 'package:to_do_app/domain/entity/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {required this.task,
      required this.removeTaskCallback,
      required this.toggleStatusCallback,
      super.key});
  final Task task;
  final VoidCallback removeTaskCallback;
  final ValueChanged<bool?> toggleStatusCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Using key to avoid render artifacts
      key: ValueKey(task.id),
      title: Text(task.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(task.description),
          Text(task.category),
        ],
      ),
      leading: Checkbox(
        value: task.isCompleted,
        onChanged: toggleStatusCallback,
        activeColor: Colors.blueAccent,
      ),
      trailing: IconButton(
          onPressed: removeTaskCallback, icon: const Icon(Icons.delete)),
    );
  }
}
