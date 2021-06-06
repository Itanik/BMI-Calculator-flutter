import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  double _heightValue = 180.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "HEIGHT",
          style: kLabelTextStyle,
        ),
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              _heightValue.toInt().toString(),
              style: kNumberTextStyle,
            ),
            Text(
              " cm",
              style: kLabelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
            trackHeight: 2.0,
            overlayColor: kAccentTransparentColor,
            activeTrackColor: Colors.white,
            inactiveTrackColor: kLabelTextColor,
            thumbColor: kAccentColor,
          ),
          child: Slider(
              min: 120.0,
              max: 220.0,
              divisions: 100,
              value: _heightValue,
              onChanged: (double newValue) {
                setState(() {
                  _heightValue = newValue;
                });
              }),
        )
      ],
    );
  }
}
