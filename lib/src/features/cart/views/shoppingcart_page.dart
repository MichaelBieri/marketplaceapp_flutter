import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: Text(
          'Shopping Cart Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}