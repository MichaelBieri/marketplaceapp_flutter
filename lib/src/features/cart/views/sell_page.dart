import 'package:flutter/material.dart';

class SellPage extends StatelessWidget {
  const SellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sell'),
      ),
      body: Center(
        child: Text(
          'Sell Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}