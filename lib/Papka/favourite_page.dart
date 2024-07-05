import 'dart:convert';
import 'favorite_container_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List<dynamic> user = [];

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
        user = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Favorurite",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: Color(0xffE2E2E2),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) => Favorite_container_page(
                  image: user[index]["image"],
                  name: user[index]["name"],
                  narx: user[index]["price"],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
          width: 204,
          height: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: Color(0xff53B175),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Go to Checkout",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
