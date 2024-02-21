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

  @override
  void initState() {
    super.initState();
    _bloc.add(const GetTasksEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-do app'),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return DialogContent();
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
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(tasks[index].title),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tasks[index].description),
                            Text(tasks[index].category)
                          ],
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              _bloc.add(RemoveTaskEvent(index));
                            },
                            icon: const Icon(Icons.delete)),
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
