import 'package:flutter/material.dart';
import 'package:nectar/Papka/Car_3_page.dart';

class Mykart extends StatefulWidget {
  @override
  State<Mykart> createState() => _MykartState();
}

class _MykartState extends State<Mykart> {
  @override
  int adad = 0;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: Color(0xffE2E2E2),
            ),
            newMethod(),
            Chiziq(context),
            newMethod(),
            Chiziq(context),
            newMethod(),
            Chiziq(context),
            newMethod(),
            Chiziq(context),
            newMethod(),
          ],
        ),
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
    );
  }

  Container Chiziq(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.88,
      height: 1,
      color: Color(0xffE2E2E2),
    );
  }

  InkWell newMethod() {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
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
                          "Pament",
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
        );
      },
      child: Container(
        width: 363,
        height: 100,
        margin: EdgeInsets.all(25),
        child: Row(
          children: [
            Image.asset(
              "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (1).png",
              width: 80,
              height: 80,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bell Pepper Red",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.close),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "1kg, Price",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                adad--;
                              });
                            },
                            icon: Icon(Icons.remove),
                          ),
                          Text("$adad"),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                adad++;
                              });
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                      Text(
                        "\$4.99",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
