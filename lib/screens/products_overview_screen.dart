import 'package:flutter/material.dart';
import 'package:shop_app_1/widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyShop"),
      ),
      body: Center(
        child: ProductsGrid(),
      ),
    );
  }
}
