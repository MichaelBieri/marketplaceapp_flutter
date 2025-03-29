import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20); //Padding
  
  @override
  Widget build (BuildContext context) {
    final isCollapsed = false;
    final safeArea = EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: Color(0xFF262AAA),
          child: Column(
              children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 74, horizontal: 20).add(safeArea),
                    width: double.infinity,
                    color: Colors.white12,
                    child: buildHeader(isCollapsed),
                  ),
              ], //children
          )
        ),
      ),
    );
  }
  
buildHeader(bool isCollapsed) => Row(
  children: [
    const SizedBox(height: 24),
    Image.asset(
      'lib/src/assets/icons/logo_rp.png',
      width: 48,  // Empfohlen: Größe angeben
      height: 48,
    ),
    const SizedBox(width: 16),  // Abstand zwischen Logo und Text
    const Text(
      'E N E R R A S X',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  ], //children
); 
}