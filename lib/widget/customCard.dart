import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget childCard;
  final Color color;

  const CustomCard({super.key, required this.childCard, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      child: Container(
          margin: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: childCard),
    );
  }
}
