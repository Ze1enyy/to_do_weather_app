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
    await openBox();
    return _taskBox!.values.toList();
  }

  Future<void> removeTask(int index) async {
    await _taskBox!.deleteAt(index);
  }

  Future<void> updateCompletedStatus({required int index}) async {
    final task = _taskBox!.getAt(index);
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
