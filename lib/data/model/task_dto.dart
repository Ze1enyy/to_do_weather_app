class TaskDto {
  TaskDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.isCompleted});
  final int id;
  final String title;
  final String description;
  final String category;
  final bool isCompleted;
}
