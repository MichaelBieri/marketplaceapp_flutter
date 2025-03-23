import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _isDarkMode ? Colors.black : const Color.fromARGB(255, 133, 194, 142),
      appBar: AppBar(
        title: const Text('E N E R R A S'), // Rätoromanisch: Mesiras Energia
        centerTitle: true,
        backgroundColor:
            _isDarkMode ? Colors.black : Color.fromARGB(255, 133, 194, 142),
        foregroundColor:
            _isDarkMode ? Colors.white : Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        leading: Icon(Icons.menu), // Falls klickbar: IconButton hinzufügen
        actions: [
          IconButton(
            icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
          ),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          Padding(padding: const EdgeInsets.only(right: 15.0)),
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
