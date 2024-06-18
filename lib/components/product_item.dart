import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}
