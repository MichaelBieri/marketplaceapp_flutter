// Hier kommt alles hinein.

import 'package:flutter/material.dart';
import 'src/features/cart/views/home_page.dart'; //

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //Konstruktor,
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
        ),
      ),
      home: const HomePage(), //Instanz der Klasse
    );
  }
}