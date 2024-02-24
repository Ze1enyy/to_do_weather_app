import 'dart:async';
import 'package:hive/hive.dart';
import 'package:to_do_app/domain/entity/task.dart';

class HiveTaskGateway {
  Box<Task>? _taskBox;

  Future<void> openBox() async {
    _taskBox = await Hive.openBox<Task>('test');
  }

  Future<void> closeBox() async {
    await _taskBox?.close();
  }

  // Base58 is efficient and reliable solution as a unique identifier
  String generateBase58TaskId() {
    int unixTime = (DateTime.now().millisecondsSinceEpoch ~/ 1);
    const String base58Chars =
        '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz';
    String result = '';

    while (unixTime > 0) {
      result = base58Chars[unixTime % 58] + result;
      unixTime ~/= 58;
    }

    return result.isNotEmpty ? result : '1';
  }

  Future<void> addTask({
    required String title,
    required String description,
    required String category,
  }) async {
    await _taskBox?.add(
      Task(
        category: category,
        description: description,
        title: title,
        id: generateBase58TaskId(),
        isCompleted: false,
      ),
    );
  }

  Future<List<Task>> getTasks() async {
    return _taskBox!.values.toList();
  }

  Future<List<Task>> getFilteredTasks(
    List<String>? categories,
    bool? isTaskCompleted,
  ) async {
    List<Task> tasks = _taskBox!.values.toList();

    if (categories != null && categories.isNotEmpty) {
      tasks =
          tasks.where((task) => categories.contains(task.category)).toList();
    }

    if (isTaskCompleted != null) {
      tasks =
          tasks.where((task) => task.isCompleted == isTaskCompleted).toList();
    }

    return tasks;
  }

  Future<void> removeTask(String id) async {
    final key = _taskBox?.keyAt(
      _taskBox!.values.toList().indexWhere((task) => task.id == id),
    );
    await _taskBox?.delete(key);
  }

  Future<void> updateTaskStatus(String id) async {
    final key = _taskBox?.keyAt(
      _taskBox!.values.toList().indexWhere((task) => task.id == id),
    );

    if (key != null) {
      final task = _taskBox?.get(key);
      Task newTask = task!.copyWith(isCompleted: !task.isCompleted);
      await _taskBox!.put(key, newTask);
    }
  }
}
