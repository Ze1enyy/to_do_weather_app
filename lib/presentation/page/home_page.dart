import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = sl<TaskBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetTasksEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-do app'),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Material(
                  child: Column(
                    children: [
                      Text('Add new task'),
                      TextField(),
                      TextField(),
                      TextField(),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                      ElevatedButton(
                          onPressed: () {
                            _bloc.add(AddTaskEvent(
                                title: 'test',
                                description: 'test',
                                category: 'test'));
                            Navigator.pop(context);
                          },
                          child: Text('Add new'))
                    ],
                  ),
                );
              },
            );
          },
          child: Text('Add')),
      body: Column(
        children: [
          BlocBuilder<TaskBloc, TaskState>(
            bloc: _bloc,
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loaded: (tasks) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(tasks[index].title),
                        subtitle: Text(tasks[index].description),
                      );
                    },
                    itemCount: tasks.length,
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
