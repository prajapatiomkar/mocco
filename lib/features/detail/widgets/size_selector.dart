import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final String selectedSize;
  final Function(String) onSizeSelected;

  const SizeSelector({
    super.key,
    required this.selectedSize,
    required this.onSizeSelected,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ['S', 'M', 'L'];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: sizes.map((size) {
        final isSelected = size == selectedSize;
        return GestureDetector(
          onTap: () => onSizeSelected(size),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xFFA1724B) : Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              size,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
