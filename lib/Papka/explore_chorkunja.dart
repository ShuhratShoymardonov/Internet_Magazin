import 'package:flutter/material.dart';

class Explore_chorkunja extends StatelessWidget {
  const Explore_chorkunja({
    super.key,
    required this.dane,
    required this.colore,
  });

  final dynamic dane;
  final dynamic colore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xff53B175), width: 1),
        gradient: LinearGradient(
          end: Alignment.topCenter,
          colors: [
            colore,
            Color.fromARGB(54, 172, 82, 82),
            Color.fromARGB(54, 82, 172, 82),
            Color.fromARGB(54, 84, 82, 172),
            Color.fromARGB(54, 172, 82, 160),
            Color.fromARGB(54, 172, 115, 82),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(dane['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            dane['name'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
