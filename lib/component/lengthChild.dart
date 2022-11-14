import 'package:flutter/material.dart';
import 'package:password_generator/theme.dart';
import 'package:password_generator/widget/customCard.dart';

class LengthChild extends StatefulWidget {
  final TextEditingController lengthPass;
  const LengthChild({Key? key, required this.lengthPass}) : super(key: key);

  @override
  State<LengthChild> createState() => _LengthChildState();
}

class _LengthChildState extends State<LengthChild> {
  @override
  int _currentSliderValue = 10;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Length Password : ",
              style: whiteTextSemiBoldStyle.copyWith(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              controller: widget.lengthPass,
              decoration: InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              readOnly: true,
              // enabled: false,
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbColor: Colors.pink[600],
              activeTrackColor: Colors.white,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
            ),
            child: Slider(
              value: _currentSliderValue.toDouble(),
              min: 4,
              max: 32,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value.toInt();
                  widget.lengthPass.text = _currentSliderValue.toString();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
