import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 0)
          ]),
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ ${product.price.toString()}'),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 85,
          child: Image.network(
            product.imgae,
            height: MediaQuery.sizeOf(context).width / 3.8,
            width: 100,
            // 'https://static.vecteezy.com/system/resources/previews/008/847/318/non_2x/isolated-black-t-shirt-front-free-png.png ',
          ),
        )
      ],
    );
  }
}
