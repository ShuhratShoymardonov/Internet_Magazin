import 'package:flutter/material.dart';

class Show_chorkunja2 extends StatelessWidget {
  final String image;
  final String name;

  const Show_chorkunja2({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 248,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color.fromARGB(96, 228, 178, 125),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.network(
              image,
              width: 71,
              height: 71,
              fit: BoxFit.cover,
            ),
            Text(
              '     $name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
