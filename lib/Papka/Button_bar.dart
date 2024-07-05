import 'package:flutter/material.dart';
import 'package:nectar/Papka/MyKart_page.dart';
import 'package:nectar/Papka/MyShop_page.dart';
import 'package:nectar/Papka/profil_page.dart';
import 'package:nectar/Papka/Explore_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:nectar/Papka/favourite_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool icon = true;
  PageController _pageController = PageController();

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
      icon = !icon;
    });
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  List<Widget> pages = [
    MyShop(),
    Explore(),
    Mykart(),
    Favourite(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          fixedColor: Color(0xff53B175),
          unselectedItemColor: Color(0xff7181725),
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory_outlined, size: 30),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, size: 30),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_sharp, size: 30),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 30),
              label: "Account",
            ),
          ],
          elevation: 0,
          selectedLabelStyle: TextStyle(fontSize: 15),
          unselectedLabelStyle: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
