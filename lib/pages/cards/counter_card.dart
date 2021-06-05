import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

enum CounterType { WEIGHT, AGE }

class CounterCard extends StatefulWidget {
  final CounterType type;

  CounterCard({required this.type});

  @override
  _CounterCardState createState() {
    return type == CounterType.WEIGHT
        ? _CounterCardState(74, "WEIGHT")
        : _CounterCardState(19, "AGE");
  }
}

class _CounterCardState extends State<CounterCard> {
  int counterValue;
  String headlineText;

  _CounterCardState(this.counterValue, this.headlineText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          headlineText,
          style: labelTextStyle,
        ),
        Text(
          counterValue.toString(),
          style: numberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.remove),
            Icon(Icons.add),
          ],
        )
      ],
    );
  }
}
