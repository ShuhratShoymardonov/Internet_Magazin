import 'package:flutter/material.dart';
import 'package:nectar/Papka/MyKart_page.dart';
import 'package:nectar/Papka/MyShop_page.dart';
import 'package:nectar/Papka/profil_page.dart';
import 'package:nectar/Papka/Explore_page.dart';
import 'package:nectar/Papka/favourite_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> sahifaho = [
    MyShop(),
    Explore(),
    Mykart(),
    Favourite(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sahifaho[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: selectPage,
        fixedColor: Color(0xff53B175),
        unselectedItemColor: Color(0xff7181725),
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory_outlined),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_sharp),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
