import 'package:flutter/material.dart';
import 'package:nectar/Papka/Produuct_page.dart';

class shop_chorkunja1 extends StatelessWidget {
  final String name;
  final int price;
  final String image;

  const shop_chorkunja1({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 173,
      height: 246,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: Color(0xffE2E2E2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 103,
              height: 62,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff181725),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '2kg, Priceg',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$$price",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Product(),
                      ),
                    );
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff53B175),
                    ),
                    child: Icon(Icons.add, size: 30, color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
