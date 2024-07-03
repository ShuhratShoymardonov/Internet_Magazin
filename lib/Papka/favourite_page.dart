import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

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
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Color(0xffE2E2E2),
                ),
                newMethode(),
                Chiziq(context),
                newMethode(),
                Chiziq(context),
                newMethode(),
                Chiziq(context),
                newMethode(),
                Chiziq(context),
                newMethode(),
              ],
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

Container Chiziq(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.88,
    height: 1,
    color: Color(0xffE2E2E2),
  );
}

Container newMethode() {
  return Container(
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
                    "Sprite Can",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$1.99",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.chevron_right_sharp),
                    ],
                  ),
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
            ],
          ),
        ),
      ],
    ),
  );
}
