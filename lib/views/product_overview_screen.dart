import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, i) => Text(loadedProducts[i].title),
        itemCount: loadedProducts.length,
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
