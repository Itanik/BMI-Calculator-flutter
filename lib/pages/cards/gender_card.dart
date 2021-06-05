import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const _kGenderIconSize = 80.0;

enum Gender { MALE, FEMALE }

class GenderCard extends StatelessWidget {
  final Gender gender;
  final VoidCallback onCardClick;

  GenderCard({required this.gender, required this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // for transparent child such as Container we must provide
      // special behavior property. otherwise touch won't be detected
      behavior: HitTestBehavior.translucent,
      onTap: onCardClick,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            gender == Gender.MALE
                ? FontAwesomeIcons.mars
                : FontAwesomeIcons.venus,
            size: _kGenderIconSize,
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              gender == Gender.MALE ? "MALE" : "FEMALE",
              style: kLabelTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
