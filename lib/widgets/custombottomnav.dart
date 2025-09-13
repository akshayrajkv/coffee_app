import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Page $_selectedIndex",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),

     
    );
  }
}
