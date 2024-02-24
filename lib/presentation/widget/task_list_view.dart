import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';
import 'package:to_do_app/presentation/widget/group_header.dart';
import 'package:to_do_app/presentation/widget/task_tile.dart';

class TaskListView extends StatefulWidget {
  const TaskListView(
      {required this.isGrouppedByCategory,
      required this.tasks,
      required this.selectedCategories,
      required this.isTaskCompletedFilter,
      super.key});
  final bool isGrouppedByCategory;
  final List<Task> tasks;
  final List<String> selectedCategories;
  final bool? isTaskCompletedFilter;

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  final _taskBloc = sl<TaskBloc>();

  bool get isGrouppedByCategory => widget.isGrouppedByCategory;
  bool? get isTaskCompletedFilter => widget.isTaskCompletedFilter;
  List<Task> get tasks => widget.tasks;
  List<String> get selectedCategories => widget.selectedCategories;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          bool isFirstInCategory = isGrouppedByCategory &&
              (index == 0 ||
                  tasks[index].category != tasks[index - 1].category);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isFirstInCategory)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GroupHeader(category: tasks[index].category),
                ),
              TaskTile(
                task: tasks[index],
                removeTaskCallback: () {
                  _taskBloc.add(RemoveTaskEvent(tasks[index].id));
                  if (selectedCategories.isEmpty) {
                    _taskBloc.add(const GetTasksEvent());
                  } else {
                    _taskBloc.add(FilterTasksEvent(
                      selectedCategories,
                      isTaskCompletedFilter,
                    ));
                  }
                },
                toggleStatusCallback: (value) {
                  _taskBloc.add(UpdateTaskStatusEvent(tasks[index].id));
                  if (selectedCategories.isEmpty) {
                    _taskBloc.add(const GetTasksEvent());
                  } else {
                    _taskBloc.add(FilterTasksEvent(
                      selectedCategories,
                      isTaskCompletedFilter,
                    ));
                  }
                },
              ),
            ],
          );
        },
        itemCount: tasks.length,
      ),
    );
  }
}
