import 'package:flutter/material.dart';

class FilterChild extends StatelessWidget {
  const FilterChild(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.ikon})
      : super(key: key);

  final Function() onPressed;
  final String label;
  final String ikon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              ikon,
              style: const TextStyle(color: Color(0xFF8D8E98), fontSize: 30),
            ),
            const SizedBox(
              height: 8,
            ),
            // ignore: prefer_const_constructors
            Text(
              label,
              style: const TextStyle(color: Color(0xFF8D8E98), fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
