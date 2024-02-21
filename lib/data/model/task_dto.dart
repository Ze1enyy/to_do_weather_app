class TaskDto {
  TaskDto(
      {required this.title,
      required this.description,
      required this.category,
      required this.isCompleted});

  final String title;
  final String description;
  final String category;
  final bool isCompleted;
}
