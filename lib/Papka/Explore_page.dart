import 'dart:convert';
import 'explore_chorkunja.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<dynamic> products = [];

  List<Color> colore = [
    Color.fromARGB(43, 83, 177, 117),
    Color.fromARGB(74, 139, 83, 83),
    Color.fromARGB(68, 101, 93, 172),
    Color.fromARGB(61, 83, 155, 80),
  ];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final response = await http.get(Uri.parse(
        'https://66854a62b3f57b06dd4c22b1.mockapi.io/getAllgroceries/v1/datas'));

    if (response.statusCode == 200) {
      setState(() {
        products = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Find Products",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(6),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Explore_chorkunja(
              dane: products[index],
              colore: colore[index % colore.length],
            );
          },
        ),
      ),
    );
  }
}
