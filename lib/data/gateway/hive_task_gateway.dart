import 'dart:async';
import 'package:hive/hive.dart';
import 'package:to_do_app/domain/entity/task.dart';

class HiveTaskGateway {
  Box<Task>? _taskBox;

  Future<void> openBox() async {
    _taskBox = await Hive.openBox<Task>('tasks');
  }

  Future<void> closeBox() async {
    await _taskBox?.close();
  }

  Future<void> addTask(Task task) async {
    await _taskBox?.add(task);
  }

  Future<List<Task>> getTasks() async {
    if (_taskBox == null) {
      await openBox();
    }

    _taskBox?.watch().listen((event) {
      print(event.value);
    });
    return _taskBox!.values.toList();
  }

  Future<List<Task>> getFilteredTasks(String category) async {
    return _taskBox!.values
        .toList()
        .where((task) => task.category == category)
        .toList();
  }

  Future<void> removeTask(int index) async {
    print(_taskBox?.values.elementAt(index).title);
    await _taskBox?.deleteAt(index);
  }

  Future<void> updateTaskStatus(int index) async {
    final task = _taskBox?.getAt(index);
    Task newTask = task!;
    await _taskBox!.putAt(
        index,
        Task(
            category: newTask.category,
            title: newTask.title,
            description: newTask.description,
            isCompleted: !newTask.isCompleted));
  }

  // Future<void> cacheTasks() async {
  //   throw UnimplementedError();
  // }
}
