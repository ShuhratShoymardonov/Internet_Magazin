import 'package:flutter/material.dart';
import 'package:nectar/Papka/anbording.dart';

class Splesh extends StatefulWidget {
  const Splesh({super.key});

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  void initState() {
    super.initState();
    goToNextPage();
  }

  void goToNextPage() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Anbording()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff53B175),
        body: Center(
          child: Image.asset("images/Group 1.png"),
        ),
      ),
    );
  }
}
