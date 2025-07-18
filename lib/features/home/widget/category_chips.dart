import 'package:flutter/material.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['All Coffee', 'Macchiato', 'Latte', 'Americano'];
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return Chip(
            label: Text(categories[index]),
            backgroundColor: index == 0 ? Color(0xFFA1724B) : Colors.grey[200],
            labelStyle: TextStyle(
              color: index == 0 ? Colors.white : Colors.black,
            ),
          );
        },
      ),
    );
  }
}
