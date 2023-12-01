import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_screen.dart';
import 'package:store_app/services/all_product_service.dart';
import 'package:store_app/widgets/custom_card.dart';

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
        body: FutureBuilder<List<ProductModel>>(
          future: AllProdctsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.6,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 95,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onLongPress: () {
                        Navigator.pushNamed(context, UpdateProcutScreen.id);
                      },
                      child: CustomCard(product: snapshot.data![index]));
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
