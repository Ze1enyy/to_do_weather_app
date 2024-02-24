import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/domain/entity/task.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/presentation/widget/add_task_dialog.dart';
import 'package:to_do_app/presentation/widget/listview_header.dart';
import 'package:to_do_app/presentation/widget/task_list_view.dart';
import 'package:to_do_app/presentation/widget/weather_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _taskBloc = sl<TaskBloc>();

  bool? _isTaskCompletedFilter;
  bool _isGrouppedByCategory = true;
  final _selectedCategories = <String>[];

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
            onPressed: () => showAddTaskDialog(context, _selectedCategories),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'To-do Weather App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const WeatherWidget(),
          ListViewHeader(
            isTaskCompletedFilter: _isTaskCompletedFilter,
            isGrouppedByCategory: _isGrouppedByCategory,
            categoriesCallback: (category) {
              setState(() {
                if (!_selectedCategories.contains(category)) {
                  _selectedCategories.add(category);
                } else {
                  _selectedCategories.remove(category);
                }
              });
              _taskBloc.add(FilterTasksEvent(
                _selectedCategories,
                _isTaskCompletedFilter,
              ));
            },
            statusCallback: (value) {
              setState(() {
                _isTaskCompletedFilter = value;
              });
              _taskBloc.add(FilterTasksEvent(
                _selectedCategories,
                _isTaskCompletedFilter,
              ));
            },
            cancelFilterCallback: () {
              setState(() {
                _isTaskCompletedFilter = null;
                _selectedCategories.clear();
                _taskBloc.add(const GetTasksEvent());
              });
            },
            grouppedViewCallback: (value) {
              setState(() {
                _isGrouppedByCategory = value;
              });
            },
          ),
          BlocBuilder<TaskBloc, TaskState>(
            bloc: _taskBloc,
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loaded: (loadedTasks) {
                  List<Task> tasks = [...loadedTasks];

                  if (_isGrouppedByCategory) {
                    tasks.sort((a, b) => a.category.compareTo(b.category));
                  }

                  return TaskListView(
                    tasks: tasks,
                    selectedCategories: _selectedCategories,
                    isGrouppedByCategory: _isGrouppedByCategory,
                    isTaskCompletedFilter: _isTaskCompletedFilter,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
