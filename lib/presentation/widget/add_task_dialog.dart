import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/di.dart';
import 'package:to_do_app/backbone/filter_utils.dart';
import 'package:to_do_app/presentation/bloc/task/bloc/task_bloc.dart';

Future<void> showAddTaskDialog(
  BuildContext context,
  List<String>? selectedCategories,
) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return DialogContent(
        selectedCategories: selectedCategories,
      );
    },
  );
}

class DialogContent extends StatefulWidget {
  const DialogContent({
    this.selectedCategories,
    this.isCompletedFilter,
    super.key,
  });
  final List<String>? selectedCategories;
  final bool? isCompletedFilter;

  @override
  State<DialogContent> createState() => _DialogContentState();
}

class _DialogContentState extends State<DialogContent> {
  final _titleTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();
  final _bloc = sl<TaskBloc>();
  String? _selectedCategory;

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
            decoration: const InputDecoration(hintText: 'Title'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextField(
              controller: _descriptionTextController,
              onChanged: (value) {
                setState(() {});
              },
              decoration: const InputDecoration(hintText: 'Description'),
            ),
          ),
          DropdownButton(
            isExpanded: true,
            hint: const Text('Select category...'),
            value: _selectedCategory,
            items: List.from(FilterUtils.categories)
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedCategory = value.toString();
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
                    _selectedCategory != null
                ? () {
                    _bloc.add(AddTaskEvent(
                        title: _titleTextController.text,
                        description: _descriptionTextController.text,
                        category: _selectedCategory!));
                    if (widget.selectedCategories != null) {
                      _bloc.add(FilterTasksEvent(
                          widget.selectedCategories, widget.isCompletedFilter));
                    } else {
                      _bloc.add(const GetTasksEvent());
                    }
                    Navigator.pop(context);
                  }
                : null,
            child: const Text('Submit')),
      ],
    );
  }
}
