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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: sizes.map((size) {
        final isSelected = size == selectedSize;
        return Expanded(
          child: GestureDetector(
            onTap: () => onSizeSelected(size),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6), // spacing between buttons
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white, // always white background
                border: Border.all(
                  color: isSelected ? Color(0xFFA1724B) : Colors.grey.shade300,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                size,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isSelected ? Color(0xFFA1724B) : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
