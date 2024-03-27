
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bottom_nav_page/cart.dart';
import '../bottom_nav_page/favorite.dart';
import '../bottom_nav_page/home.dart';
import '../bottom_nav_page/profile.dart';

class BottomNavController extends StatefulWidget {
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [MyHomePage(), Favorite(),Cart(),Profile(),];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF232227),
        unselectedItemColor: Colors.white,

        selectedLabelStyle:
        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white),
            label: "Home",
            backgroundColor: Color(0xFF232227),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline,color: Colors.white),
            label: "Favorite",
            backgroundColor: Color(0xFF232227),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart,color: Colors.white),
            label: "Cart",
            backgroundColor: Color(0xFF232227),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined,color: Colors.white),
            label: "Person",
            backgroundColor: Color(0xFF232227),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.white,),
            label: "Person",
            backgroundColor: Color(0xFF232227),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
