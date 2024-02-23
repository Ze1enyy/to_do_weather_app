import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/presentation/widget/dialog_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = sl<TaskBloc>();
  String? _selectedFilter;

  @override
  void initState() {
    super.initState();

    _bloc.add(const GetTasksEvent());
  }

  List<String> items = ['Test', 'Test1', 'Test2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-do app'),
        actions: [
          DropdownButton(
            value: _selectedFilter,
            items: List.from(items)
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedFilter = value.toString();
              });
              _bloc.add(FilterByCategoryEvent(_selectedFilter!));
            },
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return DialogContent(
                  selectedFilter: _selectedFilter,
                );
              },
            );
          },
          child: const Text('Add')),
      body: Column(
        children: [
          BlocBuilder<TaskBloc, TaskState>(
            bloc: _bloc,
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loaded: (tasks) {
                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          key: UniqueKey(),
                          title: Text(tasks[index].title),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tasks[index].description),
                              Text(tasks[index].category)
                            ],
                          ),
                          leading: Switch(
                            value: tasks[index].isCompleted,
                            onChanged: (value) {
                              _bloc.add(UpdateTaskStatus(index));
                              if (_selectedFilter == null) {
                                _bloc.add(GetTasksEvent());
                              } else {
                                _bloc.add(
                                    FilterByCategoryEvent(_selectedFilter!));
                              }
                            },
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                _bloc.add(RemoveTaskEvent(index));
                                if (_selectedFilter == null) {
                                  _bloc.add(GetTasksEvent());
                                } else {
                                  _bloc.add(
                                      FilterByCategoryEvent(_selectedFilter!));
                                }
                              },
                              icon: const Icon(Icons.delete)),
                        );
                      },
                      itemCount: tasks.length,
                    ),
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
