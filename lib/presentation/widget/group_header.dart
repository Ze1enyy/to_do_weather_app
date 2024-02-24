import 'package:flutter/material.dart';

class GroupHeader extends StatelessWidget {
  const GroupHeader({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Text(
      category,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
