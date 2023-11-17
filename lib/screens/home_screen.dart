import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Trend'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined, size: 28),
          )
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Card(
        margin: const EdgeInsets.all(20),
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Product name',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            Row(
              children: [
                const Text('Price'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
