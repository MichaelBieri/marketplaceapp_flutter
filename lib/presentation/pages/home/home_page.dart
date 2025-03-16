import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ENERRAS'), //rätromanisch mesiras energia
      ),
      body: const Center(
        child: Text(
          'Child: Willkommen auf der Webseite für den Handel mit Energiesparmassnahmen test',
        ),
      ),
    );
  }
}
