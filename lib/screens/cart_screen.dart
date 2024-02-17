import 'package:flutter/material.dart';

import '../widgets/cart_products.dart';
import '../widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: Expanded(
        child: RefreshIndicator(
          onRefresh: () => Future.delayed(Duration(seconds: 1)),
          child: Column(
            children: [
              CartTotal(),
              CartProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
