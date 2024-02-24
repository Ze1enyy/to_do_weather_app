import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/filter_utils.dart';

class ListViewHeader extends StatefulWidget {
  const ListViewHeader({
    required this.isGrouppedByCategory,
    required this.cancelFilterCallback,
    required this.grouppedViewCallback,
    required this.statusCallback,
    required this.isTaskCompletedFilter,
    required this.categoriesCallback,
    super.key,
  });

  final bool? isTaskCompletedFilter;
  final bool isGrouppedByCategory;

  final ValueChanged<bool> grouppedViewCallback;
  final VoidCallback cancelFilterCallback;
  final ValueChanged<bool?> statusCallback;
  final void Function(String category) categoriesCallback;

  @override
  State<ListViewHeader> createState() => _ListViewHeaderState();
}

class _ListViewHeaderState extends State<ListViewHeader> {
  List<String> selectedCategories = [];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: DropdownButton(
              hint: selectedCategories.isNotEmpty
                  ? Text(selectedCategories.join(', '))
                  : const Text('Filter by ...'),
              items: List.from(FilterUtils.categories)
                  .map((category) => DropdownMenuItem(
                        value: category,
                        child: StatefulBuilder(
                          builder: (context, setState) {
                            return Row(
                              children: [
                                Checkbox(
                                  onChanged: (value) {
                                    setState(() {
                                      if (!selectedCategories
                                          .contains(category)) {
                                        selectedCategories.add(category);
                                      } else {
                                        selectedCategories.remove(category);
                                      }
                                    });
                                    widget.categoriesCallback(category);
                                  },
                                  value: selectedCategories.contains(category),
                                ),
                                Text(category),
                              ],
                            );
                          },
                        ),
                      ))
                  .toList(),
              onChanged: (value) {},
            ),
          ),
          if (selectedCategories.isNotEmpty)
            IconButton(
                onPressed: () {
                  setState(() {
                    selectedCategories.clear();
                  });
                  widget.cancelFilterCallback();
                },
                icon: const Icon(Icons.close)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: DropdownButton<bool?>(
              value: widget.isTaskCompletedFilter,
              hint: const Text('Task status'),
              items: List.from(FilterUtils.taskStatus.entries
                  .toList()
                  .map((e) => DropdownMenuItem(
                        value: e.value,
                        child: Text(e.key),
                      ))),
              onChanged: widget.statusCallback,
            ),
          ),
          Row(
            children: [
              const Text('Group'),
              Switch(
                activeColor: Colors.blueAccent,
                value: widget.isGrouppedByCategory,
                onChanged: widget.grouppedViewCallback,
              ),
            ],
          )
        ],
      ),
    );
  }
}
