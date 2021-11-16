import 'package:flutter/material.dart';
import 'package:shop_app_1/models/products.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = "ProductDetails";

  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
