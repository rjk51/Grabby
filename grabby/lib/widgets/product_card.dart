import 'package:flutter/material.dart';
import 'package:grabby/data/product_data.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product,super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            product.imageUrl,
            width: 50, // Adjust image size as needed
            height: 50,
          ),
          const SizedBox(height: 8.0),
          Text(
            product.name, 
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16,color: Colors.yellow)
          ),
          const SizedBox(height: 4.0),
          Text(
            '₹${product.price.toStringAsFixed(2)}', 
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16,color: Colors.yellow)
          ),
        ],
      ),
    );
  }
}