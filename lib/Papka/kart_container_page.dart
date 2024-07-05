import 'package:flutter/material.dart';

class KartContainrPage extends StatefulWidget {
  const KartContainrPage({
    Key? key,
    required this.imagge,
    required this.name,
    required this.narx,
  }) : super(key: key);
  final String imagge;
  final String name;
  final int narx;

  @override
  State<KartContainrPage> createState() => _KartContainrPageState();
}

class _KartContainrPageState extends State<KartContainrPage> {
  int adad = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      margin: EdgeInsets.all(25),
      child: Row(
        children: [
          Image.network(
            widget.imagge,
            width: 90,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          adad = 0;
                        });
                      },
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
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
                          highlightColor: Color(0xff53B175),
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            setState(() {
                              if (adad > 0) {
                                adad--;
                              }
                            });
                          },
                          icon: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 226, 226, 226),
                                  width: 0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(Icons.remove),
                          ),
                        ),
                        Text(
                          "$adad",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          highlightColor: Color(0xff53B175),
                          onPressed: () {
                            setState(() {
                              adad++;
                            });
                          },
                          icon: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 223, 222, 222),
                                  width: 0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\$${widget.narx}",
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
    );
  }
}
