import 'package:flutter/material.dart';
import 'package:shop_app_1/models/products.dart';
import 'package:shop_app_1/providers/products.dart';
import 'package:shop_app_1/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(products[i]),
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
    );
  }
}
