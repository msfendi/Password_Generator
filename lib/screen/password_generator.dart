import 'package:flutter/material.dart';
import 'package:password_generator/component/filterChild.dart';
import 'package:password_generator/component/lengthChild.dart';
import 'package:password_generator/component/resultChild.dart';
import 'package:password_generator/controller/generatorController.dart';
import 'package:password_generator/theme.dart';
import 'package:password_generator/widget/bottomButton.dart';
import 'package:password_generator/widget/customCard.dart';

class PasswordGenerator extends StatefulWidget {
  const PasswordGenerator({Key? key}) : super(key: key);

  @override
  State<PasswordGenerator> createState() => _PasswordGeneratorState();
}

class _PasswordGeneratorState extends State<PasswordGenerator> {
  String? resultGenerator = "";
  bool upper = false;
  bool lower = false;
  bool symbol = false;
  bool number = false;
  TextEditingController lengthController = TextEditingController();

  void upperOn() {
    setState(() {
      upper = !upper;
    });
  }

  void lowerOn() {
    setState(() {
      lower = !lower;
    });
  }

  void symbolOn() {
    setState(() {
      symbol = !symbol;
    });
  }

  void numberOn() {
    setState(() {
      number = !number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password Generator"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Filter : ",
              style: whiteTextSemiBoldStyle.copyWith(fontSize: 20),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: CustomCard(
                childCard: FilterChild(
                    onPressed: () => upperOn(), label: "Upper Case", ikon: "A"),
                color: upper ? Colors.lightBlue.shade900 : Color(0xFF1D1E33),
              )),
              Expanded(
                  child: CustomCard(
                childCard: FilterChild(
                    onPressed: () => lowerOn(), label: "Lower Case", ikon: "a"),
                color:
                    lower ? Colors.lightBlue.shade900 : const Color(0xFF1D1E33),
              )),
              Expanded(
                  child: CustomCard(
                childCard: FilterChild(
                    onPressed: () => symbolOn(), label: "Symbol", ikon: '\$'),
                color: symbol
                    ? Colors.lightBlue.shade900
                    : const Color(0xFF1D1E33),
              )),
              Expanded(
                  child: CustomCard(
                childCard: FilterChild(
                    onPressed: () => numberOn(), label: "Number", ikon: "0-9"),
                color: number
                    ? Colors.lightBlue.shade900
                    : const Color(0xFF1D1E33),
              )),
            ],
          ),
          CustomCard(
              childCard: LengthChild(lengthPass: lengthController),
              color: Color(0xFF1D1E33)),
          CustomCard(
              childCard: ResultChild(newPassword: resultGenerator!),
              color: Color(0xFF1D1E33)),
          BottomButton(
              textButton: 'Generate',
              onTapped: () {
                Generate generate = Generate(
                    lowerCase: lower,
                    upperCase: upper,
                    symbol: symbol,
                    number: number,
                    length: int.parse(lengthController.text));
                String newPassword = generate.generatePassword();
                setState(() {
                  resultGenerator = newPassword;
                });
              })
        ],
      ),
    );
  }
}
