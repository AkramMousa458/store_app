import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFav = false;

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
                    widget.product.title,
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
                      Text('\$ ${widget.product.price.toString()}'),
                      Row(
                        children: [
                          Icon(Icons.star_rate_rounded,
                              color: Colors.amber[500]),
                          Text(widget.product.rating.rate.toString()),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          isFav == false ? isFav = true : isFav = false;
                          setState(() {});
                        },
                        icon: isFav == false
                            ? const Icon(Icons.favorite_border)
                            : const Icon(Icons.favorite, color: Colors.red),
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
            widget.product.image,
            height: MediaQuery.sizeOf(context).width / 3.8,
            width: 100,
          ),
        )
      ],
    );
  }
}
