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
        Text("Height"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("183"),
            Text("cm"),
          ],
        ),
        Text("spinner"),
      ],
    );
  }
}
