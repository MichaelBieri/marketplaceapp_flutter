import 'package:flutter/material.dart';

class RegulatoryPage extends StatelessWidget {
  const RegulatoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regulatory Information'),
      ),
      body: const Center(
        child: Text(
          'This is the Regulatory Information page.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}