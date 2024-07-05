import 'dart:convert';
import 'shop_chorkunja1.dart';
import 'show_chorkunja2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyShop extends StatefulWidget {
  const MyShop({Key? key}) : super(key: key);

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  List<dynamic> products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(
          'https://66854a62b3f57b06dd4c22b1.mockapi.io/getAllgroceries/v1/datas'));

      if (response.statusCode == 200) {
        setState(() {
          products = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      print('Error fetching products: $e');
      // Handle error, e.g., show a snackbar or retry logic
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
              "Dhaka, Banassre",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body:
            // products.isEmpty
            //     ? Center(child: CircularProgressIndicator())
            //     :
            SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              _buildSectionTitle("Exclusive Offer", () {
                // Handle "See all" button tap
              }),
              _buildHorizontalProductList(products),
              SizedBox(height: 20),
              _buildSectionTitle("Groceries", () {
                // Handle "See all" button tap
              }),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    ...List.generate(
                      products.length,
                      (index) {
                        return Container(
                          width: 268,
                          child: Show_chorkunja2(
                            image: products[index]['image'],
                            name: products[index]['name'],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _buildSectionTitle("Best Selling", () {
                // Handle "See all" button tap
              }),
              _buildHorizontalProductList(products),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              "See all",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff53B175),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalProductList(List<dynamic> products) {
    return Container(
      height: 248,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 16.0 : 0),
            child: Container(
              width: 200,
              child: shop_chorkunja1(
                name: products[index]['name'],
                price: products[index]['price'],
                image: products[index]['image'],
              ),
            ),
          );
        },
      ),
    );
  }
}
