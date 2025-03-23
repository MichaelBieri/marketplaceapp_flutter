import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text('ENERRAS'), // Rätoromanisch: Mesiras Energia
        centerTitle: true,
        backgroundColor: Colors.indigo,
        elevation: 0,
        leading: Icon(Icons.menu), // Falls klickbar: IconButton hinzufügen
        actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            child: Image.network(
              'https://images.unsplash.com/photo-1612838320303-4b3b3b3b3b3b',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
