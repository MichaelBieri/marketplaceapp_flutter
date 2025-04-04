import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
      ),
      body: Center(
        child: Text(
          'Shopping Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}