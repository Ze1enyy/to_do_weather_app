import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/presentation/widget/add_task_dialog.dart';
import 'package:to_do_app/presentation/widget/group_header.dart';
import 'package:to_do_app/presentation/widget/listview_header.dart';
import 'package:to_do_app/presentation/widget/task_tile.dart';
import 'package:to_do_app/presentation/widget/weather_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _taskBloc = sl<TaskBloc>();

  String? _selectedCategoryFilter;
  bool isGrouppedByCategory = true;
  bool? _isTaskCompletedFilter;

  @override
  void initState() {
    super.initState();
    _taskBloc.add(const GetTasksEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () =>
                showAddTaskDialog(context, _selectedCategoryFilter),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
        title: const Text(
          'To-do Weather App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const WeatherWidget(),
          ListViewHeader(
              isTaskCompletedFilter: _isTaskCompletedFilter,
              selectedFilter: _selectedCategoryFilter,
              isGrouppedByCategory: isGrouppedByCategory,
              statusCallback: (value) {
                setState(() {
                  _isTaskCompletedFilter = value;
                });
                _taskBloc.add(FilterByCategoryEvent(
                    _selectedCategoryFilter, _isTaskCompletedFilter));
              },
              cancelFilterCallback: () {
                setState(() {
                  _selectedCategoryFilter = null;
                  _isTaskCompletedFilter = null;
                  _taskBloc.add(const GetTasksEvent());
                });
              },
              grouppedViewCallback: (value) {
                setState(() {
                  isGrouppedByCategory = value;
                });
              },
              categoriesCallback: (value) {
                setState(() {
                  _selectedCategoryFilter = value.toString();
                });
                _taskBloc.add(FilterByCategoryEvent(
                    _selectedCategoryFilter, _isTaskCompletedFilter));
              }),
          BlocBuilder<TaskBloc, TaskState>(
            bloc: _taskBloc,
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loaded: (loadedTasks) {
                  List<Task> tasks = [...loadedTasks];

                  if (isGrouppedByCategory) {
                    tasks.sort((a, b) => a.category.compareTo(b.category));
                  }

                  return _buildTaskListView(tasks);
                },
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildTaskListView(List<Task> tasks) {
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
                  if (_selectedCategoryFilter == null) {
                    _taskBloc.add(const GetTasksEvent());
                  } else {
                    _taskBloc.add(FilterByCategoryEvent(
                        _selectedCategoryFilter, _isTaskCompletedFilter));
                  }
                },
                toggleStatusCallback: (value) {
                  _taskBloc.add(UpdateTaskStatusEvent(tasks[index].id));
                  if (_selectedCategoryFilter == null) {
                    _taskBloc.add(const GetTasksEvent());
                  } else {
                    _taskBloc.add(FilterByCategoryEvent(
                        _selectedCategoryFilter, _isTaskCompletedFilter));
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
