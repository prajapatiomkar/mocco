import 'package:flutter/material.dart';
import 'package:mocco/features/detail/widgets/size_selector.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String selectedSize = 'M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Coffee Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/coffee_1.png',
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 12),

            // Coffee Info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Caffe Mocha',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 4),
                    Text('Ice/Hot', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 20),
                    const SizedBox(width: 4),
                    Text(
                      '4.8 (230)',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Description", style: TextStyle(fontSize: 20)),
            ),

            Text.rich(
              TextSpan(
                text:
                    'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk...',
                children: [
                  TextSpan(
                    text: "Read More",
                    style: TextStyle(color: Color(0xFFC67C4E)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Size", style: TextStyle(fontSize: 20)),
            ),
            // Size Selector
            SizeSelector(
              selectedSize: selectedSize,
              onSizeSelected: (size) {
                setState(() {
                  selectedSize = size;
                });
              },
            ),

            const Spacer(),

            // Price and Buy Now
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    '\$4.53',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/order',
                      ); // or use go_router
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFA1724B),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
