import 'package:flutter/material.dart';

class BottomButton extends StatefulWidget {
  final String textButton;
  final Function() onTapped;
  const BottomButton(
      {Key? key, required this.onTapped, required this.textButton})
      : super(key: key);

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapped,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(color: Colors.pink[600]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Text(
            widget.textButton,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
