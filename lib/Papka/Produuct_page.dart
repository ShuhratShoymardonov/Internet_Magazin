import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

int age = 1;
bool layk = true;

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        title: Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 30, bottom: 50),
              decoration: BoxDecoration(
                color: const Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Image.asset(
                "images/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (1).png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Naturel Red Apple',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            layk = !layk;
                          });
                        },
                        icon: layk
                            ? Icon(
                                Icons.favorite_border,
                              )
                            : Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                      ),
                    ],
                  ),
                  Text(
                    '1kg, Price',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if (age > 0) {
                            setState(() {
                              age--;
                            });
                          }
                        },
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text('$age'),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                      Spacer(),
                      Text(
                        '\$4.99',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ExpansionTile(
                    title: Text(
                      'Product Detail',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                    collapsedBackgroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    collapsedShape: RoundedRectangleBorder(
                      side: BorderSide.none,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                    ),
                    iconColor: Color(0xff181725),
                    collapsedIconColor: Color(0xff181725),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nutritions',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Text('100gr'),
                            Icon(Icons.chevron_right_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: Text(
                      'Review',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        return Icon(
                          Icons.star,
                          color: Colors.orange,
                        );
                      }),
                    ),
                    children: [],
                  ),
                  SizedBox(height: 16),
                  Center(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
