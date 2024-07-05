import 'package:flutter/material.dart';

class Favorite_container_page extends StatelessWidget {
  final String image;
  final String name;
  final int narx;

  const Favorite_container_page({
    super.key,
    required this.image,
    required this.name,
    required this.narx,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 363,
          height: 100,
          margin: EdgeInsets.all(25),
          child: Row(
            children: [
              Image.network(
                image,
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
                          name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$$narx",
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
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.88,
          height: 1,
          color: Color(0xffE2E2E2),
        ),
      ],
    );
  }
}
