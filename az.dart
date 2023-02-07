
import 'package:amazon_demo/pro.dart';
import 'package:flutter/material.dart';

import 'amezon.dart';
import 'cart.dart';
import 'movies.dart';
class az extends StatefulWidget {
  const az({Key? key}) : super(key: key);

  @override
  State<az> createState() => _azState();
}

class _azState extends State<az> {
  int _selectedIndex = 0;

  final pages = [
    profile(),
    card(),
    movies(),
    amezon(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages [_selectedIndex],
      bottomNavigationBar: Container(
        height: 54,
        child: BottomNavigationBar(
          fixedColor: Colors.black,
          backgroundColor: Colors.black,
          items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined,color: Colors.black87),
              label: 'Cook',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_front_outlined,color: Colors.black87),
              label: 'Media',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined,color: Colors.black87,),
              label: 'Movies',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined,color: Colors.black87,),
              label: 'Shopping',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
