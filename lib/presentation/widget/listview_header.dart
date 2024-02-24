import 'package:flutter/material.dart';
import 'package:to_do_app/backbone/filter_utils.dart';

class ListViewHeader extends StatelessWidget {
  const ListViewHeader({
    required this.selectedFilter,
    required this.isGrouppedByCategory,
    required this.dropdownCallback,
    required this.cancelFilterCallback,
    required this.grouppedViewCallback,
    super.key,
  });
  final String? selectedFilter;
  final bool isGrouppedByCategory;
  final ValueChanged<Object?> dropdownCallback;
  final ValueChanged<bool> grouppedViewCallback;
  final VoidCallback cancelFilterCallback;

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
            onChanged: dropdownCallback,
          ),
          if (selectedFilter != null)
            IconButton(
                onPressed: cancelFilterCallback, icon: const Icon(Icons.close)),
          const Spacer(),
          Row(
            children: [
              const Text('Group tasks'),
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
