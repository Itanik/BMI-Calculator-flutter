import 'package:flutter/material.dart';

import '../constants.dart';

const _kBottomContainerHeight = 80.0;

class LargeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const LargeButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          height: _kBottomContainerHeight,
          color: kAccentColor,
          alignment: Alignment.center,
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      );
}
