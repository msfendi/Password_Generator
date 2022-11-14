import 'package:flutter/material.dart';
import 'package:password_generator/theme.dart';
import 'package:password_generator/widget/customCard.dart';

class ResultChild extends StatefulWidget {
  final String newPassword;
  const ResultChild({Key? key, required this.newPassword}) : super(key: key);

  @override
  State<ResultChild> createState() => _ResultChildState();
}

class _ResultChildState extends State<ResultChild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            // ignore: prefer_const_constructors
            child: Text(
              widget.newPassword,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            // ignore: prefer_const_constructors
            child: Text(
              "Password Result Akan Muncul Disini",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
