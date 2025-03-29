import 'package:flutter/material.dart';
import 'NavigationDrawerWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor:
          _isDarkMode ? Colors.black : const Color.fromARGB(255, 133, 194, 142),
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('E N E R R A S 5'), // Rätoromanisch: Mesiras Energia
        centerTitle: false,
        titleSpacing: 20.0,
        backgroundColor:
            _isDarkMode ? Colors.black : Color.fromARGB(255, 133, 194, 142),
        foregroundColor:
            _isDarkMode ? Colors.white : Color.fromARGB(255, 0, 0, 0),
        elevation: 2.0,
        actions: [
          IconButton(
            icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              }); //setState  
            }, //onPressed
          ),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          Padding(padding: const EdgeInsets.only(right: 15.0)),
        ], //actions
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
        ], //children
      ),
    );
}