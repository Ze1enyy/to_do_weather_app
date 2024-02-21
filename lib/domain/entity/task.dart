import 'package:hive/hive.dart';
part 'task.g.dart';

@HiveType(typeId: 1)
class Task {
  Task(
      {required this.title,
      required this.description,
      required this.category,
      required this.isCompleted});

  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String category;
  @HiveField(4, defaultValue: false)
  final bool isCompleted;
}
