import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nectar/Papka/Car_3_page.dart';
import 'package:nectar/Papka/kart_container_page.dart';

class Mykart extends StatefulWidget {
  @override
  State<Mykart> createState() => _MykartState();
}

class _MykartState extends State<Mykart> {
  List<Map<String, dynamic>> product = [];

  @override
  void initState() {
    super.initState();
    MyAllUser();
  }

  Future<void> MyAllUser() async {
    final user = await http.get(Uri.parse(
        "https://66854a62b3f57b06dd4c22b1.mockapi.io/getAllgroceries/v1/datas"));
    if (user.statusCode == 200) {
      setState(() {
        product = List<Map<String, dynamic>>.from(json.decode(user.body));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "My Cart",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) => KartContainrPage(
          name: product[index]['name'],
          narx: product[index]["price"],
          imagge: product[index]['image'],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () => showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Checkout",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.close),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Color(0xffE2E2E2),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Color(0xffE2E2E2),
                  ))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Select Method",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181725),
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_sharp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Color(0xffE2E2E2),
                  ))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("images/card.png"),
                            Icon(Icons.keyboard_arrow_right_sharp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Color(0xffE2E2E2),
                  ))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Promo Code",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Pick discount",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181725),
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_sharp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Color(0xffE2E2E2),
                  ))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Cost",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$13.97",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff181725),
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_sharp),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Car3Page(),
                      ),
                    );
                  },
                  child: Container(
                    width: 364,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xff53B175),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Place Order",
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
              ],
            ),
          ),
        ),
        child: Container(
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
