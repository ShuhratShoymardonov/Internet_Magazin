import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 80, left: 20, bottom: 30),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffE2E2E2),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/Rectangle 82.png"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Afsar Hossen ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.edit_outlined,
                                color: Colors.green,
                              )
                            ],
                          ),
                          Text(
                            "Imshuvo97@gmail.com",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C7C7C),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Containers(iconka: Icons.shopping_bag_outlined, text: 'Orders'),
                Containers(
                    iconka: Icons.account_circle_outlined, text: 'My Details'),
                Containers(
                    iconka: Icons.location_on_outlined,
                    text: 'Delivery Address'),
                Containers(
                    iconka: Icons.credit_card_outlined,
                    text: 'Payment Methods'),
                Containers(
                    iconka: Icons.local_offer_outlined, text: 'Promo Cord'),
                Containers(
                    iconka: Icons.notifications_none_sharp,
                    text: 'Notifecations'),
                Containers(iconka: Icons.help_outline_rounded, text: 'Help'),
                Containers(iconka: Icons.info_outline_rounded, text: 'About '),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: Container(
                          width: 312,
                          height: 100,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      SystemNavigator.pop();
                                    },
                                    child: Text(
                                      "Да, выйти",
                                      style: TextStyle(
                                        color: Color(0xffEF4444),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "Отмена",
                                      style: TextStyle(
                                        color: Color(0xff1780C2),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    padding: EdgeInsets.only(left: 30),
                    width: 364,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color.fromARGB(255, 225, 228, 225),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.exit_to_app,
                          size: 30,
                          color: Colors.green,
                        ),
                        SizedBox(width: 70),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  InkWell Containers({required iconka, required text}) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xffE2E2E2),
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(iconka),
                SizedBox(width: 10),
                Text(
                  "$text",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Icon(Icons.keyboard_arrow_right_sharp),
          ],
        ),
      ),
    );
  }
}
