import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('ENERRAS'), //rätromanisch mesiras energia
        centerTitle: true,
        backgroundColor:  Colors.indigo,
      ),
      body: const Center(
        child: Text(
          'Child: Willkommen auf der Webseite für den Handel mit Energiesparmassnahmen test',
        ),
      ),
    );
  }
}
