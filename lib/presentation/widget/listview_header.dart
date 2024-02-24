import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/filter_utils.dart';

class ListViewHeader extends StatelessWidget {
  const ListViewHeader({
    required this.selectedFilter,
    required this.isGrouppedByCategory,
    required this.categoriesCallback,
    required this.cancelFilterCallback,
    required this.grouppedViewCallback,
    required this.statusCallback,
    required this.isTaskCompletedFilter,
    super.key,
  });
  final String? selectedFilter;
  final bool? isTaskCompletedFilter;
  final bool isGrouppedByCategory;
  final ValueChanged<Object?> categoriesCallback;
  final ValueChanged<bool> grouppedViewCallback;
  final VoidCallback cancelFilterCallback;
  final ValueChanged<bool?> statusCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          DropdownButton(
            hint: const Text('Filter by ...'),
            value: selectedFilter,
            items: List.from(FilterUtils.categories)
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: categoriesCallback,
          ),
          DropdownButton<bool?>(
            value: isTaskCompletedFilter,
            hint: const Text('Task status'),
            items: List.from(FilterUtils.taskStatus.entries
                .toList()
                .map((e) => DropdownMenuItem(
                      value: e.value,
                      child: Text(e.key),
                    ))),
            onChanged: statusCallback,
          ),
          if (selectedFilter != null)
            IconButton(
                onPressed: cancelFilterCallback, icon: const Icon(Icons.close)),
          const Spacer(),
          Row(
            children: [
              const Text('Group'),
              Switch(
                activeColor: Colors.blueAccent,
                value: isGrouppedByCategory,
                onChanged: grouppedViewCallback,
              ),
            ],
          )
        ],
      ),
    );
  }
}
