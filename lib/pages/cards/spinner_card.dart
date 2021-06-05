import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class SpinnerCard extends StatefulWidget {
  @override
  _SpinnerCardState createState() => _SpinnerCardState();
}

class _SpinnerCardState extends State<SpinnerCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "HEIGHT",
          style: labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "183",
              style: numberTextStyle,
            ),
            Text(
              " cm",
              style: labelTextStyle,
            ),
          ],
        ),
        Text("spinner"),
      ],
    );
  }
}
