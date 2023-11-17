import 'package:flutter/material.dart';
import 'package:store_app/services/add_product_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(
              onPressed: () async {
                Map<String, dynamic> data = await AddProductService.addProduct();
  
                print(data);
              },
              child: const Text("Get products"),
            ),
            ElevatedButton(
              onPressed: () async {},
              child: const Text("Print products"),
            )
          ],
        ),
      ),
    );
  }
}
