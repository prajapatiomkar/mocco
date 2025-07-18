import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push("/detail");
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/coffee_1.png',
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text('Caffe Mocha', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Deep Foam', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('\$4.53', style: TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color(0xFFA1724B),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.add, color: Colors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
