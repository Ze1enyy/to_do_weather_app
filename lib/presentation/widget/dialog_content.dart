import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';

class DialogContent extends StatefulWidget {
  const DialogContent({super.key});

  @override
  State<DialogContent> createState() => _DialogContentState();
}

class _DialogContentState extends State<DialogContent> {
  final _titleTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();
  final _bloc = sl<TaskBloc>();
  String? _selectedItem;

  @override
  void dispose() {
    _titleTextController.dispose();
    _descriptionTextController.dispose();
    super.dispose();
  }

  void _clearControllers() {
    setState(() {
      _titleTextController.clear();
      _descriptionTextController.clear();
    });
  }

  List<String> items = ['Test', 'Test1', 'Test2'];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add new task'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleTextController,
            onChanged: (value) {
              setState(() {});
            },
          ),
          TextField(
            controller: _descriptionTextController,
            onChanged: (value) {
              setState(() {});
            },
          ),
          DropdownButton(
            value: _selectedItem ?? items[0],
            items: List.from(items)
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedItem = value.toString();
              });
            },
          )
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: _titleTextController.text.isNotEmpty ||
                  _descriptionTextController.text.isNotEmpty
              ? _clearControllers
              : null,
          child: const Text('Clear'),
        ),
        TextButton(
            onPressed: _titleTextController.text.isNotEmpty &&
                    _descriptionTextController.text.isNotEmpty &&
                    _selectedItem != null
                ? () {
                    _bloc.add(AddTaskEvent(
                        title: _titleTextController.text,
                        description: _descriptionTextController.text,
                        category: _selectedItem!));
                    Navigator.pop(context);
                  }
                : null,
            child: const Text('Submit')),
      ],
    );
  }
}
