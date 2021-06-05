import 'package:flutter/material.dart';

enum CounterType { WEIGHT, AGE }

class CounterCard extends StatefulWidget {
  final CounterType type;

  CounterCard({required this.type});

  @override
  _CounterCardState createState() {
    if (type == CounterType.WEIGHT)
      return _CounterCardState(74, "WEIGHT");
    else
      return _CounterCardState(19, "AGE");
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
        Text(headlineText),
        Text(counterValue.toString()),
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
